import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();

  bool _isValid = false;
  LoginViewModel();

  get isValid => _isValid;

  void navigateBack() => navigationService.back();

  void onForgotPassword() {
    navigationService.navigateTo(Routes.forgotPasswordView);
  }

  void onProfileCreate() {
    navigationService.navigateTo(Routes.profileCreateView);
  }

  @override
  void setFormStatus() {
    _isValid = true;
    formValueMap.keys.forEach((element) {
      String elementValue = formValueMap[element];
      log.d("ElementValue $elementValue");
      if (elementValue.isEmpty) {
        _isValid = false;
        return;
      }
    });

    notifyListeners();
  }
}
