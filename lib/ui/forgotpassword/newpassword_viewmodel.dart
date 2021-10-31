import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/models/params/reset_password_body.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked_services/stacked_services.dart';

class NewPasswordViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();
  bool _isValid = false;
  NewPasswordViewModel();

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

  Future<void> confirmPassword() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        String newPassword = formValueMap["newPassword"];
        String confirmPassword = formValueMap["confirmPassword"];

        if (newPassword != confirmPassword &&
            (newPassword.isEmpty || confirmPassword.isEmpty)) {
          snackBarService.showSnackbar(message: "Please enter new password");
        }

        UpdatePasswordBody updatePasswordBody = UpdatePasswordBody(newPassword);
        final result = await runBusyFuture(
            userService.updatePassword(updatePasswordBody),
            throwException: true);
        if (result.getException != null) {
          ServerError error = result.getException as ServerError;
          snackBarService.showSnackbar(message: error.getErrorMessage());
        } else if (result.data != null) {
          snackBarService.showSnackbar(message: result.data!.message ?? "");
          navigationService.pushNamedAndRemoveUntil(Routes.loginView);
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
