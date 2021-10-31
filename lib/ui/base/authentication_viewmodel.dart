import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kubelite/api/base_response.dart';
import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/models/application_models.dart';
import 'package:kubelite/models/params/login_body.dart';
import 'package:kubelite/models/params/profile_create_body.dart';
import 'package:kubelite/models/params/register_body.dart';
import 'package:kubelite/models/params/social_login_body.dart';
import 'package:kubelite/models/user_response_models.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/services/user_service.dart';
import 'package:kubelite/ui/otp/confirm_otp_viewmodel.dart';
import 'package:kubelite/util/string_extension.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

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

  Future<void> updateProfile(ProfileCreateBody createBody) async {
    log.i('valued:$formValueMap');
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<UserResponse> response = await runBusyFuture(
            userService.updateProfile(createBody),
            throwException: true);
        if (response.data != null) {
          sharedPreferencesService.currentState =
              getRedirectStateName(RedirectState.Home);
          navigationService.pushNamedAndRemoveUntil(Routes.dashboard);
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
    final facebookLogin = FacebookLogin();
    facebookLogin.loginBehavior = FacebookLoginBehavior.webViewOnly;
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        log.d("Fb token: ${result.accessToken.token}");
        await runBusyFuture(handleSocialLogin(result.accessToken.token, true),
            throwException: true);
        if (userService.hasLoggedInUser)
          _handleLoggedInUser(userService.currentUser);
        break;
      case FacebookLoginStatus.cancelledByUser:
        snackBarService.showSnackbar(message: "Cancelled by User");
        break;
      case FacebookLoginStatus.error:
        snackBarService.showSnackbar(message: "${result.errorMessage}");
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
