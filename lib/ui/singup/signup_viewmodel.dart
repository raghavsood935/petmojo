import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import 'signup_view.form.dart';

class SignUpViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();

  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  bool _isValid = false;
  SignUpViewModel() : super(successRoute: Routes.homeView);

  get isValid => _isValid;

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() {
    return _firebaseAuthenticationService.createAccountWithEmail(
      email: emailValue!,
      password: passwordValue!,
    );
  }

  void navigateBack() => navigationService.back();

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
