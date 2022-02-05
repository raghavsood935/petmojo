import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'confirm_otp_phone_view.form.dart';
import 'confirm_otp_phone_view_model.dart';

@FormView(fields: [
  FormTextField(name: 'otp'),
])
class ConfirmOtpPhoneView extends StatelessWidget with $ConfirmOtpPhoneView {
  ConfirmOtpPhoneView({Key? key, required this.phoneNumber}) : super(key: key);

  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmOtpPhoneViewModel>.reactive(
      viewModelBuilder: () => ConfirmOtpPhoneViewModel(),
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              verticalSpaceRegular,
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: colors.black,
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.titleBold(
                "Confirm your Phone Number",
                textAlign: TextAlign.center,
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPaddding,
                child: AppText.body1(
                  "OTP has been sent to your phone number +91-$phoneNumber",
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: commonPaddding,
                child: AppText.caption("One-Time Password"),
              ),
              Padding(
                padding: commonPaddding,
                child: AppInputField(
                  controller: model.otpTC,
                  hint: "Enter OTP",
                  textInputType: TextInputType.number,
                  maxLength: 6,
                  autoFocus: true,
                ),
              ),
              verticalSpaceRegular,
              AppText.body1Bold(
                model.timerCount == 0
                    ? "RESEND OTP"
                    : "RESEND OTP in ${model.timerCount}",
                textAlign: TextAlign.center,
              ),
              verticalSpaceTiny,
              Visibility(
                visible: model.timerCount == 0,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.all(16),
                        child: ElevatedButton(
                          onPressed: () => model.resendOTP(phoneNumber, "text"),
                          child: model.isTextResendLoading
                              ? CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )
                              : AppText.body2("Text", color: colors.white),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(colors.primary),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(12)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.all(16),
                        child: ElevatedButton(
                          onPressed: () =>
                              model.resendOTP(phoneNumber, "voice"),
                          child: model.isVoiceResendLoading
                              ? CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )
                              : AppText.body2("Voice", color: colors.white),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(colors.primary),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(12)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: Container(
          width: double.maxFinite,
          margin: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () => model.verifyOTP(phoneNumber, model.otpTC.text),
            child: model.isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : AppText.body1Bold("CONFIRM OTP", color: colors.white),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colors.primary),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
