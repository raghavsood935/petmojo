import 'package:flutter/material.dart';
import 'package:kubelite/ui/otp/confirm_otp_view.form.dart';
import 'package:kubelite/ui/otp/confirm_otp_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'otp'),
])
class ConfirmOTPView extends StatelessWidget with $ConfirmOTPView {
  final bool isEmailVerify;
  final String verificationData;
  ConfirmOTPView(
      {Key? key, required this.isEmailVerify, required this.verificationData})
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
          isSocialLoginEnabled: false,
          onMainButtonTapped: model.saveData,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    oneTimeLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppInputField(
                hint: oneTimeHint,
                controller: otpController,
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ConfirmOTPViewModel(),
    );
  }
}
