import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/ui/forgotpassword/forgotpassword_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/authentication_layout.dart';
import 'package:tamely/ui/forgotpassword/forgotpassword_view.form.dart';

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
          onMainButtonTapped: model.resetPassword,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: forgotPasswordTitle,
          subtitle: forgotPasswordSubTitle,
          isSocialLoginEnabled: false,
          mainButtonTitle: resetPasswordButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              verticalSpaceRegular,
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
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          hintText: "Enter email address",
                          hintStyle: TextStyle(
                            color: Color(0xFFABB3BB),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
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
