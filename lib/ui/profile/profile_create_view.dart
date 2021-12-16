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
  final isEdit;
  final isAnimal;
  final petID;
  final lastAvatarUrl;
  ProfileCreateView({
    Key? key,
    required this.user,
    this.isEdit,
    this.lastAvatarUrl,
    this.isAnimal,
    this.petID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileCreateViewModel>.reactive(
      onModelReady: (model) {
        listenToFormUpdated(model);
        model.init(lastAvatarUrl, isEdit ?? false, isAnimal ?? false,
            petID.toString());
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
          onBackPressed: model.onBack,
          onForgotPassword: null,
          validationMessage: model.validationMessage,
          title: isEdit ?? false ? editProfileTitle : completeProfileTitle,
          subtitle: isEdit ?? false ? "" : completeProfileSubTitle,
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
                        if (model.imagePath.isEmpty || model.avatarUrl.isEmpty)
                          CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 65,
                            child: SvgPicture.asset(
                              cameraIcon,
                              color: colors.white,
                            ),
                          ),
                        if (model.avatarUrl.isNotEmpty &&
                            model.imagePath.isEmpty)
                          CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 65,
                            child: ClipOval(
                              child: SizedBox(
                                width: 130,
                                height: 130,
                                child: Image.network(model.avatarUrl),
                              ),
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
                                ),
                              ),
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
