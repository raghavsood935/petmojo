import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/ui/base/authentication_viewmodel.dart';

class SignUpViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();

  bool _isValid = false;
  SignUpViewModel();

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
