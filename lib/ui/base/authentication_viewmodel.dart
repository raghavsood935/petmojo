import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/params/login_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/params/register_body.dart';
import 'package:tamely/models/params/social_login_body.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/otp/confirm_otp_viewmodel.dart';
import 'package:tamely/util/string_extension.dart';
import 'package:tamely/util/utils.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final log = getLogger('AuthenticationViewModel');

  final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();
  final snackBarService = locator<SnackbarService>();
  final sharedPreferencesService = locator<SharedPreferencesService>();
  final _googleSignIn = GoogleSignIn();

  AuthenticationViewModel();

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
          _handleLoggedInUser(userService.currentUser);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
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
            navigationService.pushNamedAndRemoveUntil(Routes.dashboard);
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
        final result = await runBusyFuture(
            userService.loginAccount(registerBody),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser);
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

      final result = await runBusyFuture(
          handleSocialLogin(googleSignInAuthentication.accessToken!, false),
          throwException: true);

      if (userService.hasLoggedInUser)
        _handleLoggedInUser(userService.currentUser);

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
        await runBusyFuture(handleSocialLogin(result.accessToken!.token, true),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser);
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

  Future handleSocialLogin(String token, bool isFacebook) async {
    try {
      if (await Util.checkInternetConnectivity()) {
        SocialLoginBody socialLoginBody =
            SocialLoginBody(token, DateTime.now().microsecond.toString());
        final result = await runBusyFuture(
            userService.socialLogin(socialLoginBody, isFacebook),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  void _handleLoggedInUser(LocalUser currentUser) {
    if (currentUser.fullName.isValid() &&
        currentUser.username.isValid() &&
        currentUser.confirmed) {
      sharedPreferencesService.currentState =
          getRedirectStateName(RedirectState.Home);
      navigationService.pushNamedAndRemoveUntil(Routes.dashboard);
    } else if (!currentUser.confirmed) {
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
    } else {
      sharedPreferencesService.currentState =
          getRedirectStateName(RedirectState.ProfileCreate);
      navigationService.pushNamedAndRemoveUntil(
        Routes.profileCreateView,
        arguments: ProfileCreateViewArguments(user: currentUser),
      );
    }
  }
}
