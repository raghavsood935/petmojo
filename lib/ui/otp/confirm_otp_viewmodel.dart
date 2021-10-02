import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class ConfirmOTPViewModel extends AuthenticationViewModel {
  bool _isValid = false;
  ConfirmOTPViewModel() : super(successRoute: Routes.homeView);

  get isValid => _isValid;

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() {
    return Future.value();
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
