import 'package:flutter/material.dart';
import 'package:kubelite/ui/forgotpassword/newpassword_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_password_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'new_password_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'newPassword'),
  FormTextField(name: 'confirmPassword')
])
class NewPasswordView extends StatelessWidget with $NewPasswordView {
  NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewPasswordViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          // onMainButtonTapped: model.saveData,
          onMainButtonTapped: model.moveToOTPView,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: setUpNewPasswordTitle,
          subtitle: "",
          isSocialLoginEnabled: false,
          mainButtonTitle: signUpButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    newPasswordLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppInputField(
                hint: newPasswordHint,
                controller: newPasswordController,
              ),
              verticalSpaceMedium,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    confirmPasswordLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppPasswordInputField(
                hint: confirmPasswordHint,
                controller: newPasswordController,
              ),
            ],
          ),
          showTermsText: false,
        ),
      ),
      viewModelBuilder: () => NewPasswordViewModel(),
    );
  }
}
