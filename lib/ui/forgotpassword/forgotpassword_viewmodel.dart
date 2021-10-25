import 'package:kubelite/api/api_service.dart';
import 'package:kubelite/api/base_response.dart';
import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/models/common_response.dart';
import 'package:kubelite/models/params/reset_password_body.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/util/utils.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgotPasswordViewModel extends AuthenticationViewModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  bool _isValid = false;
  ForgotPasswordViewModel();

  get isValid => _isValid;

  void navigateBack() => navigationService.back();

  // void moveToSetUpPassword() {
  //   navigationService.replaceWith(Routes.newPasswordView);
  // }

  Future<void> resetPassword() async {
    if (await Util.checkInternetConnectivity()) {
      ResetPasswordBody resetPasswordBody =
          ResetPasswordBody(formValueMap["email"]);
      try {
        BaseResponse<CommonResponse> response = await runBusyFuture(
            _tamelyApi.resetPassword(resetPasswordBody),
            throwException: true);
        if (response.getException != null) {
          ServerError error = response.getException as ServerError;
          _snackBarService.showSnackbar(message: error.getErrorMessage());
        } else if (response.data != null) {
          _navigationService.popRepeated(1);
        }
      } catch (e) {
        log.e(e);
        _snackBarService.showSnackbar(message: "$e");
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
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
