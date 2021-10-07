import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends AuthenticationViewModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();

  final log = getLogger('OnBoardingViewModel');

  OnBoardingViewModel() : super(successRoute: Routes.homeView);

  void initModel() {
    _sharedPrefService.currentState =
        getRedirectStateName(RedirectState.Welcome);
  }

  void moveAsGuest() {}

  void moveToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }

  void moveToSignup() {
    _navigationService.navigateTo(Routes.signUpView);
  }
}
