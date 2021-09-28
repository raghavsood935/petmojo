import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class LoginViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final log = getLogger('LoginViewModel');

  LoginViewModel() : super(successRoute: Routes.homeView);

  // @override
  // Future<FirebaseAuthenticationResult> runAuthentication() =>
  //     _firebaseAuthenticationService!.loginWithEmail(
  //       email: "",
  //       password: "",
  //     );
}
