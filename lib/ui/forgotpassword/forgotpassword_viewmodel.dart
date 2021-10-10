import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgotPasswordViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();
  bool _isValid = false;
  ForgotPasswordViewModel();

  get isValid => _isValid;

  void navigateBack() => navigationService.back();

  void moveToSetUpPassword() {
    navigationService.replaceWith(Routes.newPasswordView);
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
