import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/edit_response.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/params/update_token_body.dart';
import 'package:tamely/models/params/verify_mobile_otp_body.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/otp/confirm_otp_viewmodel.dart';
import 'package:tamely/util/utils.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final log = getLogger('AuthenticationViewModel');

  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();
  final snackBarService = locator<SnackbarService>();
  final sharedPreferencesService = locator<SharedPreferencesService>();
  final _googleSignIn = GoogleSignIn();

  AuthenticationViewModel();

  bool isLoading = false;

  @override
  void setFormStatus() {}

  Future saveData() async {
    log.i('valued:$formValueMap');

    // try {
    //   final result =
    //       await runBusyFuture(runAuthentication(), throwException: true);
    //
    //   await _handleAuthenticationResponse(result);
    // } on FirestoreApiException catch (e) {
    //   log.e(e.toString());
    //   setValidationMessage(e.toString());
    // }
  }

  Future createAccount() async {
    log.i('valued:$formValueMap');
    try {
      String email = formValueMap["email"];
      String password = formValueMap["password"];
      if (email.isEmpty || password.isEmpty) {
        snackBarService.showSnackbar(message: "Please enter valid values");
        return;
      }
      if (await Util.checkInternetConnectivity()) {
        RegisterBody registerBody = RegisterBody(email, password);
        final result = await runBusyFuture(
            userService.createAccount(registerBody),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser, true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future verifyOTP(String phoneNumber, String otp) async {
    isLoading = true;
    notifyListeners();
    var response =
        await _tamelyApi.verifyMobileOTP(VerifyMobileOTPBody(phoneNumber, otp));
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      isLoading = false;
      notifyListeners();
      if (error.getErrorMessage() == "Received invalid status code: 400") {
        _snackBarService.showSnackbar(message: "Enter a valid OTP");
      } else {
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (response.data != null) {
      isLoading = false;
      notifyListeners();
      _handleLoggedInUser(
          response.data!.localUser!, response.data!.isNewUser ?? true);
      sharedPreferencesService.authToken = response.data!.token ?? "";
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> updateProfile(ProfileCreateBody createBody,
      {bool isEdit = false}) async {
    log.i('valued:$formValueMap');
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<UserResponse> response = await runBusyFuture(
            userService.updateProfile(createBody),
            throwException: true);
        if (response.data != null) {
          sharedPreferencesService.currentState =
              getRedirectStateName(RedirectState.Home);
          if (isEdit) {
            navigationService.back(result: 1);
          } else {
            navigationService.pushNamedAndRemoveUntil(Routes.dashboard,
                arguments: DashboardArguments(
                  isNeedToUpdateProfile: true,
                  initialPageState: 0,
                  isHuman: true,
                  petID: "",
                  petToken: "",
                  initialState: 0,
                ));
          }
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future loginAccount() async {
    log.i('valued:$formValueMap');
    try {
      String email = formValueMap["email"];
      String password = formValueMap["password"];
      if (email.isEmpty || password.isEmpty) {
        snackBarService.showSnackbar(message: "Please enter valid values");
        return;
      }
      if (await Util.checkInternetConnectivity()) {
        LoginBody registerBody = LoginBody(email, password);
        bool? result = await runBusyFuture(
            userService.loginAccount(registerBody),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser, result!);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future<void> useGoogleAuthentication() async {
    try {
      await _googleSignIn.signOut();
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount == null) {
        log.i('Process is canceled by the user');
        snackBarService.showSnackbar(
            message: "Google Sign In has been cancelled by the user");
        return;
      }

      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      bool? result = await runBusyFuture(
          handleSocialLogin(googleSignInAuthentication.accessToken!, false),
          throwException: true);

      if (userService.hasLoggedInUser)
        _handleLoggedInUser(userService.currentUser, result!,
            isSocialSignIn: true);

      log.d("GoogleLogin ${googleSignInAuthentication.accessToken}");
    } catch (e) {
      log.e(e);
    }
  }

  Future<void> useFacebookAuthentication() async {
    final LoginResult result = await FacebookAuth.instance.login();
    switch (result.status) {
      case LoginStatus.success:
        log.d("Fb token: ${result.accessToken}");
        bool? resultBool = await runBusyFuture(
            handleSocialLogin(result.accessToken!.token, true),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser, resultBool!,
              isSocialSignIn: true);
        break;
      case LoginStatus.cancelled:
        snackBarService.showSnackbar(message: "Cancelled by User");
        break;
      case LoginStatus.failed:
        snackBarService.showSnackbar(message: "${result.message}");
        break;
      case LoginStatus.operationInProgress:
        log.d("Operation in progress");
        break;
    }
  }

  Future<bool?> handleSocialLogin(String token, bool isFacebook) async {
    try {
      if (await Util.checkInternetConnectivity()) {
        SocialLoginBody socialLoginBody =
            SocialLoginBody(token, DateTime.now().microsecond.toString());
        bool? result = await runBusyFuture(
            userService.socialLogin(socialLoginBody, isFacebook),
            throwException: true);
        return result;
        // if (userService.hasLoggedInUser)
        //   _handleLoggedInUser(userService.currentUser);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  void _handleLoggedInUser(LocalUser currentUser, bool isNewUser,
      {bool isSocialSignIn = false}) async {
    await updateToken().whenComplete(() {
      if (currentUser.confirmed && !isNewUser) {
        sharedPreferencesService.currentState =
            getRedirectStateName(RedirectState.Home);
        navigationService.pushNamedAndRemoveUntil(Routes.dashboard,
            arguments: DashboardArguments(
              isNeedToUpdateProfile: true,
              initialPageState: 0,
              isHuman: true,
              petID: "",
              petToken: "",
              initialState: 0,
            ));
      } else if (!currentUser.confirmed && !isSocialSignIn) {
        sharedPreferencesService.currentState =
            getRedirectStateName(RedirectState.Start);
        navigationService.pushNamedAndRemoveUntil(
          Routes.confirmOTPView,
          arguments: ConfirmOTPViewArguments(
            isEmailVerify: true,
            verificationData: currentUser.email ?? "",
            verificationType: getVerificationTypeName(VerificationType.login),
          ),
        );
      } else if (isNewUser) {
        sharedPreferencesService.currentState =
            getRedirectStateName(RedirectState.ProfileCreate);
        navigationService.pushNamedAndRemoveUntil(Routes.profileCreateView,
            arguments: ProfileCreateViewArguments(user: currentUser));
      }
    });
  }

  Future updateToken() async {
    FirebaseMessaging.instance.deleteToken();
    String? token = await FirebaseMessaging.instance.getToken();

    if (await Util.checkInternetConnectivity()) {
      BaseResponse<EditResponse> response = await runBusyFuture(
          _tamelyApi.updateFCMToken(UpdateTokenBody(token ?? "")),
          throwException: true);
      if (response.data != null) {
        print("token: ${token ?? ""} ");
        sharedPreferencesService.fcmToken = token ?? "";
      }
    } else {
      snackBarService.showSnackbar(message: "No Internet connection");
    }
  }
}
