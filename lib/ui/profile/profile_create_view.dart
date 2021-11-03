import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/ui/profile/profile_create_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/authentication_layout.dart';

import 'profile_create_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'username'),
  FormTextField(name: 'name'),
  FormTextField(name: 'shortBio'),
])
class ProfileCreateView extends StatelessWidget with $ProfileCreateView {
  final LocalUser user;
  ProfileCreateView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileCreateViewModel>.reactive(
      onModelReady: (model) {
        listenToFormUpdated(model);
        model.init();
        usernameController.text = user.username ?? "";
        nameController.text = user.fullName ?? "";
        shortBioController.text = user.bio ?? "";
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: AuthenticationLayout(
          busy: model.isBusy,
          isValid: model.isValid,
          onMainButtonTapped: model.saveProfileData,
          onBackPressed: null,
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
              GestureDetector(
                onTap: () {
                  model.onImageButtonPressed(ImageSource.gallery, context);
                },
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: colors.primary,
                  child: CircleAvatar(
                    radius: 67,
                    backgroundColor: colors.kcLightGreyBackground,
                    child: Stack(
                      children: [
                        if (model.imagePath.isEmpty)
                          CircleAvatar(
                            backgroundColor: colors.primaryLight,
                            radius: 65,
                            child: SvgPicture.asset(
                              cameraIcon,
                              color: colors.primary,
                            ),
                          ),
                        if (model.imagePath.isNotEmpty)
                          CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 65,
                            child: ClipOval(
                              child: SizedBox(
                                  width: 130,
                                  height: 130,
                                  child: Image.file(
                                    File(model.imagePath),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              verticalSpaceLarge,
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
              AppInputField(
                hint: userNameHint,
                controller: usernameController,
                errorText: model.validUser(usernameController),
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
      viewModelBuilder: () => ProfileCreateViewModel(user),
    );
  }
}
