import 'package:flutter/material.dart';
import 'package:kubelite/ui/profile/profile_create_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/authentication_layout.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'profile_create_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'username'),
  FormTextField(name: 'name'),
  FormTextField(name: 'shortBio'),
])
class ProfileCreateView extends StatelessWidget with $ProfileCreateView {
  ProfileCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileCreateViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          onMainButtonTapped: model.loginAccount,
          onBackPressed: model.navigateBack,
          onForgotPassword: null,
          validationMessage: model.validationMessage,
          title: completeProfileTitle,
          subtitle: completeProfileSubTitle,
          isSocialLoginEnabled: false,
          showTermsText: false,
          mainButtonTitle: continueButtonTitle,
          form: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    userNameLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: colors.primary,
                        child: CircleAvatar(
                          radius: 67,
                          backgroundColor: colors.kcLightGreyBackground,
                          child: CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 65,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 80,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 20,
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              AppInputField(
                hint: userNameHint,
                controller: usernameController,
                textInputType: TextInputType.name,
                textCapitalization: TextCapitalization.none,
              ),
              verticalSpaceMedium,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    fullNameLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppInputField(
                hint: fullNameHint,
                controller: nameController,
                textInputType: TextInputType.name,
                textCapitalization: TextCapitalization.sentences,
              ),
              verticalSpaceMedium,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body1(
                    shortBioLabel,
                    textAlign: TextAlign.start,
                    color: colors.black,
                  ),
                ),
              ),
              AppInputField(
                hint: shortBioHint,
                controller: shortBioController,
                textInputType: TextInputType.multiline,
                textCapitalization: TextCapitalization.sentences,
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ProfileCreateViewModel(),
    );
  }
}
