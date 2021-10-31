import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/models/params/reset_password_body.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/string_extension.dart';
import 'package:kubelite/util/utils.dart';

class ConfirmOTPViewModel extends AuthenticationViewModel {
  bool _isValid = false;
  final bool isEmailVerify;
  final String verificationData;
  final String verificationType;

  ConfirmOTPViewModel(
      this.isEmailVerify, this.verificationData, this.verificationType);

  get isValid => _isValid;

  void navigateBack() {
    navigationService.pushNamedAndRemoveUntil(Routes.loginView);
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

  Future<void> resendOTP() async {
    try {
      if ((userService.currentUser.email ?? "").isValid()) {}
      if (await Util.checkInternetConnectivity()) {
        final result = await runBusyFuture(
            userService.verifyAccount(verificationType),
            throwException: true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }

  Future<void> confirmOTP() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        String otp = formValueMap["otp"];
        if (!otp.isValid()) {
          snackBarService.showSnackbar(message: "Please enter OTP");
        }
        ConfirmOTPBody confirmOTPBody = ConfirmOTPBody(otp);
        final result = await runBusyFuture(
            userService.confirmAccount(confirmOTPBody, verificationType),
            throwException: true);
        if (result.getException != null) {
          ServerError error = result.getException as ServerError;
          snackBarService.showSnackbar(message: error.getErrorMessage());
        } else if (result.data != null) {
          snackBarService.showSnackbar(message: result.data!.message ?? "");

          //move to profile create view
          if (verificationType ==
              getVerificationTypeName(VerificationType.login)) {
            sharedPreferencesService.currentState =
                getRedirectStateName(RedirectState.ProfileCreate);
            navigationService.pushNamedAndRemoveUntil(
              Routes.profileCreateView,
              arguments:
                  ProfileCreateViewArguments(user: userService.currentUser),
            );
          } else {
            navigationService.replaceWith(Routes.newPasswordView);
          }
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
      setValidationMessage(e.toString());
    }
  }
}

enum VerificationType { login, forgetpwd }

String getVerificationTypeName(VerificationType verificationType) {
  return verificationType
      .toString()
      .substring(verificationType.toString().indexOf('.') + 1);
}
