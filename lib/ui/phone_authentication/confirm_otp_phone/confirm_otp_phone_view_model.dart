import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/params/resend_mobile_otp_body.dart';
import 'package:tamely/ui/base/authentication_viewmodel.dart';

class ConfirmOtpPhoneViewModel extends AuthenticationViewModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  TextEditingController otpTC = TextEditingController();

  int timerCount = 30;

  late Timer _timer;

  // bool isLoading = false;

  bool isTextResendLoading = false;
  bool isVoiceResendLoading = false;

  bool _isValid = false;

  bool get isValid => _isValid;

  Future startTimer() async {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      timerCount--;
      notifyListeners();
      if (timerCount == 0) {
        _timer.cancel();
      }
    });
  }

  Future resendOTP(String phoneNumber, String type) async {
    if (type == "text") {
      isTextResendLoading = true;
      notifyListeners();
    } else {
      isVoiceResendLoading = true;
      notifyListeners();
    }
    var response = await _tamelyApi
        .resendMobileOTP(ResendMobileOTPBody(phoneNumber, type));
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      isTextResendLoading = false;
      isVoiceResendLoading = false;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      isTextResendLoading = false;
      isVoiceResendLoading = false;
      timerCount = 30;
      notifyListeners();
      startTimer();
      _snackBarService.showSnackbar(message: "OTP send again");
    } else {
      isTextResendLoading = false;
      isVoiceResendLoading = false;
      notifyListeners();
    }
  }

  @override
  void setFormStatus() {
    _isValid = true;
    formValueMap.keys.forEach((element) {
      String elementValue = formValueMap[element];
      if (elementValue.isEmpty) {
        _isValid = false;
        return;
      }
    });

    notifyListeners();
  }
}
