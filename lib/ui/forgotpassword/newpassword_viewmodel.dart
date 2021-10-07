import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked_services/stacked_services.dart';

import 'forgotpassword_view.form.dart';

class NewPasswordViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();
  bool _isValid = false;
  NewPasswordViewModel() : super(successRoute: Routes.homeView);

  get isValid => _isValid;

  void navigateBack() => navigationService.back();

  void onForgotPassword() {
    navigationService.navigateTo(Routes.homeView);
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
