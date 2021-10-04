import 'package:flutter/material.dart';
import 'package:kubelite/ui/forgotpassword/forgotpassword_view.form.dart';
import 'package:kubelite/ui/forgotpassword/forgotpassword_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [FormTextField(name: 'email')])
class ForgotPasswordView extends StatelessWidget with $ForgotPasswordView {
  ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          // onMainButtonTapped: model.saveData,
          onMainButtonTapped: model.moveToSetUpPassword,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: forgotPasswordTitle,
          subtitle: forgotPasswordSubTitle,
          isSocialLoginEnabled: false,
          mainButtonTitle: signUpButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              verticalSpaceRegular,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    emailPhoneLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppInputField(
                hint: enterEmailPhoneHint,
                controller: emailController,
              ),
              verticalSpaceMedium,
            ],
          ),
          showTermsText: false,
        ),
      ),
      viewModelBuilder: () => ForgotPasswordViewModel(),
    );
  }
}
