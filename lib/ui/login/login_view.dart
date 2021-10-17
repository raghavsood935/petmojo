import 'package:flutter/material.dart';
import 'package:kubelite/ui/login/login_view.form.dart';
import 'package:kubelite/ui/login/login_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_password_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class LoginView extends StatelessWidget with $LoginView {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          onMainButtonTapped: model.loginAccount,
          onBackPressed: model.navigateBack,
          onForgotPassword: model.onForgotPassword,
          validationMessage: model.validationMessage,
          onSignInWithFacebook: model.useFacebookAuthentication,
          onSignInWithGoogle: model.useGoogleAuthentication,
          title: loginAccountTitle,
          subtitle: '',
          isSocialLoginEnabled: true,
          mainButtonTitle: loginButtonTitle,
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
                textInputType: TextInputType.emailAddress,
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
          showTermsText: false,
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
