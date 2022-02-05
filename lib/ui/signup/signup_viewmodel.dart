import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/ui/base/authentication_viewmodel.dart';

class SignUpViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();

  bool _isValid = false;
  SignUpViewModel();

  get isValid => _isValid;

  bool emailFocus = false;
  bool passwordFocus = false;

  Future onEmailFocusChanges(bool focus) async {
    emailFocus = focus;
    notifyListeners();
  }

  Future onPasswordFocusChanges(bool focus) async {
    passwordFocus = focus;
    notifyListeners();
  }

  void onPhoneAuthentication() {
    navigationService.navigateTo(Routes.phoneAuthenticationView);
  }

  void navigateBack() => navigationService.back();

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
