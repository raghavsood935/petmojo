import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/send_mobile_otp_body.dart';
import 'package:tamely/ui/phone_authentication/phone_authentication_view.form.dart';

class PhoneAuthenticationViewModel extends FormViewModel {
  final log = getLogger('PhoneAuthentication');
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();

  TextEditingController phonenumberTC = TextEditingController();
  TextEditingController countryCodeTC = TextEditingController();

  BuildContext context;

  PhoneAuthenticationViewModel(this.context);

  bool isLoading = false;

  bool _isValid = false;

  bool get isValid => _isValid;

  Future sendOTP() async {
    if (phonenumberTC.text.length == 10) {
      isLoading = true;
      notifyListeners();
      var response = await _tamelyApi.sendMobileOTP(
        SendMobileOTPBody(phonenumberTC.text, countryCodeTC.text),
      );
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        isLoading = false;
        notifyListeners();
      } else if (response.data != null) {
        isLoading = false;
        notifyListeners();
        await _navigationService.navigateTo(
          Routes.confirmOtpPhoneView,
          arguments:
              ConfirmOtpPhoneViewArguments(phoneNumber: phonenumberTC.text),
        );
      } else {
        isLoading = false;
        notifyListeners();
      }
    } else {
      _snackBarService.showSnackbar(
          message: "Please enter a valid mobile number",
      );

    }

  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
    _isValid = true;
    formValueMap.keys.forEach((element) {
      if (formValueMap[CountryCodeValueKey].toString().length >= 3) {
        FocusScope.of(context).nextFocus();
        log.d("MOVED TO NEXT");
      }
      String elementValue = formValueMap[element];
      log.d("MOVED TO NEXT");
      if (elementValue.isEmpty) {
        _isValid = false;
        return;
      }
    });

    notifyListeners();
  }
}
