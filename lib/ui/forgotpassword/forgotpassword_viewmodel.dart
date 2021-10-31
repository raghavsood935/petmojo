import 'package:kubelite/api/api_service.dart';
import 'package:kubelite/api/base_response.dart';
import 'package:kubelite/api/server_error.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/models/common_response.dart';
import 'package:kubelite/models/params/reset_password_body.dart';
import 'package:kubelite/ui/base/authentication_viewmodel.dart';
import 'package:kubelite/ui/otp/confirm_otp_viewmodel.dart';
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

  Future<void> resetPassword() async {
    if (await Util.checkInternetConnectivity()) {
      String email = formValueMap["email"];
      ResetPasswordBody resetPasswordBody = ResetPasswordBody(email);
      try {
        BaseResponse<CommonResponse> response = await runBusyFuture(
            _tamelyApi.resetPassword(resetPasswordBody),
            throwException: true);
        if (response.getException != null) {
          ServerError error = response.getException as ServerError;
          _snackBarService.showSnackbar(message: error.getErrorMessage());
        } else if (response.data != null) {
          sharedPreferencesService.currentState =
              getRedirectStateName(RedirectState.Start);
          navigationService.pushNamedAndRemoveUntil(
            Routes.confirmOTPView,
            arguments: ConfirmOTPViewArguments(
              isEmailVerify: true,
              verificationData: email,
              verificationType:
                  getVerificationTypeName(VerificationType.forgetpwd),
            ),
          );
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
