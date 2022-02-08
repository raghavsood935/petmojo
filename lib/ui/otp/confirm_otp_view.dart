import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/ui/otp/confirm_otp_view.form.dart';
import 'package:tamely/ui/otp/confirm_otp_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/authentication_layout.dart';

@FormView(fields: [
  FormTextField(name: 'otp'),
])
class ConfirmOTPView extends StatelessWidget with $ConfirmOTPView {
  final bool isEmailVerify;
  final String verificationData;
  final String verificationType;
  ConfirmOTPView(
      {Key? key,
      required this.isEmailVerify,
      required this.verificationData,
      required this.verificationType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmOTPViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          onResendOTP: model.resendOTP,
          isSocialLoginEnabled: false,
          onMainButtonTapped: model.confirmOTP,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: confirmEmailLabel,
          subtitle: (isEmailVerify
                  ? confirmSubtitleEmail
                  : confirmSubtitlePhoneNumber) +
              " $verificationData",
          mainButtonTitle: confirmButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: AppText.body1(
              //       oneTimeLabel,
              //       textAlign: TextAlign.start,
              //       color: colors.black,
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: Color(0xFFD0D0D0), width: 0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      color: Color(0xFFABB3BB),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: TextField(
                        controller: otpController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          hintText: oneTimeHint,
                          hintStyle: TextStyle(
                            color: Color(0xFFABB3BB),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              // AppInputField(
              //   hint: oneTimeHint,
              //   textInputType: TextInputType.number,
              //   controller: otpController,
              // ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ConfirmOTPViewModel(
          this.isEmailVerify, this.verificationData, this.verificationType),
    );
  }
}
