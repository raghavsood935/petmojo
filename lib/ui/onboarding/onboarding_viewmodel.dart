import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();

  final log = getLogger('OnBoardingViewModel');

  OnBoardingViewModel() : super(successRoute: Routes.homeView);

  void moveAsGuest() {}

  void moveToLogin() {}

  void moveToSignup() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService!.loginWithEmail(
        email: "",
        password: "",
      );
}
