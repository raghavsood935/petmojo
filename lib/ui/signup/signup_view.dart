import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_password_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/authentication_layout.dart';

import 'signup_view.form.dart';
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
          onMainButtonTapped: model.createAccount,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: createAccountTitle,
          onSignInWithFacebook: model.useFacebookAuthentication,
          onSignInWithGoogle: model.useGoogleAuthentication,
          onSignInWithApple: model.useAppleAuthentication,
          onContinueWithPhone: model.onPhoneAuthentication,
          subtitle: '',
          isSocialLoginEnabled: true,
          mainButtonTitle: signUpButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(
                      color:
                          model.emailFocus ? colors.primary : Color(0xFFD0D0D0),
                      width: 0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_rounded,
                      color:
                          model.emailFocus ? colors.primary : Color(0xFFABB3BB),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: FocusScope(
                        child: Focus(
                          onFocusChange: model.onEmailFocusChanges,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              hintText: enterEmailUserNameHint,
                              hintStyle: TextStyle(
                                color: Color(0xFFABB3BB),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(
                      color: model.passwordFocus
                          ? colors.primary
                          : Color(0xFFD0D0D0),
                      width: 0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_rounded,
                      color: model.passwordFocus
                          ? colors.primary
                          : Color(0xFFABB3BB),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: FocusScope(
                        child: Focus(
                          onFocusChange: model.onPasswordFocusChanges,
                          child: AppPasswordInputField(
                            hint: passwordHint,
                            controller: passwordController,
                            noNeedBorder: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 15),
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   decoration: BoxDecoration(
              //     color: colors.white,
              //     border: Border.all(color: Color(0xFFD0D0D0), width: 0.5),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.email_rounded,
              //         color: Color(0xFFABB3BB),
              //       ),
              //       horizontalSpaceRegular,
              //       Expanded(
              //         child: TextField(
              //           controller: emailController,
              //           decoration: InputDecoration(
              //             border: InputBorder.none,
              //             disabledBorder: InputBorder.none,
              //             enabledBorder: InputBorder.none,
              //             errorBorder: InputBorder.none,
              //             focusedBorder: InputBorder.none,
              //             focusedErrorBorder: InputBorder.none,
              //             hintText: enterEmailUserNameHint,
              //             hintStyle: TextStyle(
              //               color: Color(0xFFABB3BB),
              //             ),
              //           ),
              //           keyboardType: TextInputType.emailAddress,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 15),
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   decoration: BoxDecoration(
              //     color: colors.white,
              //     border: Border.all(color: Color(0xFFD0D0D0), width: 0.5),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.lock_rounded,
              //         color: Color(0xFFABB3BB),
              //       ),
              //       horizontalSpaceRegular,
              //       Expanded(
              //         child: AppPasswordInputField(
              //           hint: passwordHint,
              //           controller: passwordController,
              //           noNeedBorder: true,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          showTermsText: true,
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
