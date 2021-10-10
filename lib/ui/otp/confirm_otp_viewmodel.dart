import 'package:kubelite/ui/base/authentication_viewmodel.dart';

class ConfirmOTPViewModel extends AuthenticationViewModel {
  bool _isValid = false;
  ConfirmOTPViewModel();
  get isValid => _isValid;

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
