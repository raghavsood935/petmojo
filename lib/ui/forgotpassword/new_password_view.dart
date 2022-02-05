import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/ui/forgotpassword/newpassword_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_password_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/authentication_layout.dart';

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
          onMainButtonTapped: model.confirmPassword,
          onBackPressed: model.navigateBack,
          validationMessage: model.validationMessage,
          title: setUpNewPasswordTitle,
          subtitle: "",
          isSocialLoginEnabled: false,
          mainButtonTitle: setNewPasswordButton,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
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
                        controller: newPasswordController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          hintText: newPasswordHint,
                          hintStyle: TextStyle(
                            color: Color(0xFFABB3BB),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // AppInputField(
              //   hint: newPasswordHint,
              //   controller: newPasswordController,
              // ),
              verticalSpaceMedium,
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: AppText.body1(
              //       confirmPasswordLabel,
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
                      Icons.lock_rounded,
                      color: Color(0xFFABB3BB),
                    ),
                    horizontalSpaceRegular,
                    Expanded(
                      child: AppPasswordInputField(
                        hint: confirmPasswordHint,
                        controller: confirmPasswordController,
                        noNeedBorder: true,
                      ),
                    ),
                  ],
                ),
              ),
              // AppPasswordInputField(
              //   hint: confirmPasswordHint,
              //   controller: confirmPasswordController,
              // ),
            ],
          ),
          showTermsText: false,
        ),
      ),
      viewModelBuilder: () => NewPasswordViewModel(),
    );
  }
}
