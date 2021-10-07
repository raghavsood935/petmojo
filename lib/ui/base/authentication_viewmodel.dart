import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/models/application_models.dart';
import 'package:kubelite/models/params/login_body.dart';
import 'package:kubelite/models/params/register_body.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final log = getLogger('AuthenticationViewModel');

  final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();
  final _googleSignIn = GoogleSignIn();

  final String successRoute;

  AuthenticationViewModel({required this.successRoute});

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
        _snackBarService.showSnackbar(message: "Please enter valid values");
        return;
      }
      RegisterBody registerBody =
          RegisterBody(email, password, "fullName", email.split("@")[0]);
      final result = await userService.createAccount(registerBody);
      if (userService.hasLoggedInUser)
        _handleLoggedInUser(userService.currentUser);
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future updateProfile() async {
    log.i('valued:$formValueMap');
    try {
      String email = formValueMap["email"];
      String password = formValueMap["password"];
      if (email.isEmpty || password.isEmpty) {
        _snackBarService.showSnackbar(message: "Please enter valid values");
        return;
      }
      RegisterBody registerBody =
          RegisterBody(email, password, "fullName", email.split("@")[0]);
      final result = await userService.createAccount(registerBody);
      if (userService.hasLoggedInUser)
        _handleLoggedInUser(userService.currentUser);
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
        _snackBarService.showSnackbar(message: "Please enter valid values");
        return;
      }
      LoginBody registerBody = LoginBody(email, password);
      final result = await runBusyFuture(userService.loginAccount(registerBody),
          throwException: true);
      if (userService.hasLoggedInUser)
        _handleLoggedInUser(userService.currentUser);
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
        _snackBarService.showSnackbar(
            message: "Google Sign In has been cancelled by the user");
      }

      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      log.d("GoogleLogin ${googleSignInAuthentication.accessToken}");
      log.d("GoogleLogin $googleSignInAuthentication");

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      // final result = await _signInWithCredential(credential);
      //
      // // Link the pending credential with the existing account
      // if (_pendingCredential != null) {
      //   await result.user?.linkWithCredential(_pendingCredential!);
      //   _clearPendingData();
      // }
    } catch (e) {
      log.e(e);
    }

    // final result = await firebaseAuthenticationService.signInWithGoogle();
    // await _handleAuthenticationResponse(result);
  }

  Future<void> useFacebookAuthentication() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        log.d("Fb token: ${result.accessToken.token}");
        try {
          final AuthCredential authCredential =
              FacebookAuthProvider.credential(result.accessToken.token);
          // final firebaseResult =
          //     await FirebaseAuth.instance.signInWithCredential(authCredential);
          // _handleAuthenticationResponse(
          //     FirebaseAuthenticationResult(user: firebaseResult.user));
        } on FirebaseAuthException catch (error) {
          String errorMessage = "";
          log.e("FirebaseError ${error.code}", error);
          switch (error.code) {
            case "ERROR_INVALID_EMAIL":
              errorMessage = "Your email address appears to be malformed.";
              break;
            case "ERROR_WRONG_PASSWORD":
              errorMessage = "Your password is wrong.";
              break;
            case "ERROR_USER_NOT_FOUND":
              errorMessage = "User with this email doesn't exist.";
              break;
            case "ERROR_USER_DISABLED":
              errorMessage = "User with this email has been disabled.";
              break;
            case "ERROR_TOO_MANY_REQUESTS":
              errorMessage = "Too many requests. Try again later.";
              break;
            case "ERROR_OPERATION_NOT_ALLOWED":
              errorMessage =
                  "Signing in with Email and Password is not enabled.";
              break;
            case "account-exists-with-different-credential":
              errorMessage = "Account Exists with different credential";
              break;
            default:
              errorMessage = "An undefined Error happened.";
          }

          // _handleAuthenticationResponse(FirebaseAuthenticationResult.error(
          //     errorMessage: errorMessage, exceptionCode: error.code));
        }
        break;
      case FacebookLoginStatus.cancelledByUser:
        // _handleAuthenticationResponse(FirebaseAuthenticationResult.error(
        //     errorMessage: "Cancelled by User", exceptionCode: ""));
        break;
      case FacebookLoginStatus.error:
        // _handleAuthenticationResponse(FirebaseAuthenticationResult.error(
        //     errorMessage: result.errorMessage));
        break;
    }
  }

  /// Checks if the result has an error. If it doesn't we navigate to the success view
  /// else we show the friendly validation message.
  // Future<void> _handleAuthenticationResponse(
  //     FirebaseAuthenticationResult authResult) async {
  //   log.v('authResult.hasError:${authResult.hasError}');
  //
  //   if (!authResult.hasError && authResult.user != null) {
  //     final user = authResult.user!;
  //
  //     // await userService.syncOrCreateUserAccount(
  //     //   user: LocalUser(id: user.uid, email: user.email),
  //     // );
  //
  //     // navigate to success route
  //     navigationService.replaceWith(successRoute);
  //   } else {
  //     if (!authResult.hasError && authResult.user == null) {
  //       log.wtf(
  //           'We have no error but the user is null. This should not be happening');
  //     }
  //
  //     log.w('Authentication Failed: ${authResult.errorMessage}');
  //
  //     setValidationMessage(authResult.errorMessage);
  //     _snackBarService.showSnackbar(
  //         message: authResult.errorMessage ?? "Error occurred");
  //     notifyListeners();
  //   }
  // }

  void _handleLoggedInUser(LocalUser currentUser) {
    //TODO need to check new user
    _sharedPreferencesService.currentState =
        getRedirectStateName(RedirectState.Home);
    navigationService.replaceWith(successRoute);
  }
}
