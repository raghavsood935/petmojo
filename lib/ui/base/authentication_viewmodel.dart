import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/models/application_models.dart';
import 'package:kubelite/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final log = getLogger('AuthenticationViewModel');

  final userService = locator<UserService>();
  final navigationService = locator<NavigationService>();

  final firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final String successRoute;
  AuthenticationViewModel({required this.successRoute});

  @override
  void setFormStatus() {}

  // Future<FirebaseAuthenticationService> runAuthentication();
  //
  // Future saveData() async {
  //   log.i('valued:$formValueMap');
  //
  //   try {
  //     final result =
  //         await runBusyFuture(runAuthentication(), throwException: true);
  //
  //     await _handleAuthenticationResponse(result);
  //   } on FirestoreApiException catch (e) {
  //     log.e(e.toString());
  //     setValidationMessage(e.toString());
  //   }
  // }

  Future<void> useGoogleAuthentication() async {
    final result = await firebaseAuthenticationService.signInWithGoogle();
    await _handleAuthenticationResponse(result);
  }

  Future<void> useFacebookAuthentication() async {
    final facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        // _sendTokenToServer(result.accessToken.token);
        log.d("Fb token: ${result.accessToken.token}");
        final AuthCredential authCredential =
            FacebookAuthProvider.credential(result.accessToken.token);
        final firebaseResult =
            await FirebaseAuth.instance.signInWithCredential(authCredential);
        _handleAuthenticationResponse(
            FirebaseAuthenticationResult(user: firebaseResult.user));
        // _showLoggedInUI();
        break;
      case FacebookLoginStatus.cancelledByUser:
        // _showCancelledMessage();
        _handleAuthenticationResponse(FirebaseAuthenticationResult.error(
            errorMessage: "Cancelled by User", exceptionCode: ""));
        break;
      case FacebookLoginStatus.error:
        // _showErrorOnUI(result.errorMessage);
        _handleAuthenticationResponse(FirebaseAuthenticationResult.error(
            errorMessage: result.errorMessage));
        break;
    }
  }

  /// Checks if the result has an error. If it doesn't we navigate to the success view
  /// else we show the friendly validation message.
  Future<void> _handleAuthenticationResponse(
      FirebaseAuthenticationResult authResult) async {
    log.v('authResult.hasError:${authResult.hasError}');

    if (!authResult.hasError && authResult.user != null) {
      final user = authResult.user!;

      await userService.syncOrCreateUserAccount(
        user: LocalUser(id: user.uid, email: user.email),
      );

      // navigate to success route
      navigationService.replaceWith(successRoute);
    } else {
      if (!authResult.hasError && authResult.user == null) {
        log.wtf(
            'We have no error but the uer is null. This should not be happening');
      }

      log.w('Authentication Failed: ${authResult.errorMessage}');

      setValidationMessage(authResult.errorMessage);
      notifyListeners();
    }
  }
}
