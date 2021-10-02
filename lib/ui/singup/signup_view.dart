import 'package:flutter/material.dart';
import 'package:kubelite/ui/singup/signup_view.form.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_password_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'signup_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class SignUpView extends StatelessWidget with $SignUpView {
  SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
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
          title: createAccountTitle,
          subtitle: '',
          isSocialLoginEnabled: true,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    passwordLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppPasswordInputField(
                hint: passwordHint,
                controller: passwordController,
              ),
            ],
          ),
          showTermsText: true,
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
