import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/base/authentication_viewmodel.dart';

class OnBoardingViewModel extends AuthenticationViewModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();

  final log = getLogger('OnBoardingViewModel');

  OnBoardingViewModel();

  void initModel() {
    _sharedPrefService.currentState =
        getRedirectStateName(RedirectState.Welcome);
  }

  void moveAsGuest() {
    _navigationService.navigateTo(Routes.dashboard);
  }

  void moveToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }

  void moveToSignup() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void moveToContinueWithPhone() {
    _navigationService.navigateTo(Routes.phoneAuthenticationView);
  }

  void goBack() {
    _navigationService.back();
  }
}
