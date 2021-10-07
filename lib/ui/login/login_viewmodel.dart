import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_view.form.dart';

class LoginViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();

  bool _isValid = false;
  LoginViewModel() : super(successRoute: Routes.profileCreateView);

  get isValid => _isValid;

  void navigateBack() => navigationService.back();

  void onForgotPassword() {
    onProfileCreate();
    // navigationService.navigateTo(Routes.forgotPasswordView);
  }

  void onProfileCreate() {
    navigationService.navigateTo(Routes.profileCreateView);
  }

  void moveToOTPView() {
    navigationService.replaceWith(Routes.confirmOTPView,
        arguments: ConfirmOTPViewArguments(
            isEmailVerify: Util.isNumeric(emailValue),
            verificationData: emailValue ?? ""));
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
