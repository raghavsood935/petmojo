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
import 'package:tamely/widgets/with_title_item.dart';

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
  final petToken;
  final lastAvatarUrl;
  ProfileCreateView({
    Key? key,
    required this.user,
    this.isEdit,
    this.lastAvatarUrl,
    this.isAnimal,
    this.petID,
    this.petToken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileCreateViewModel>.reactive(
      onModelReady: (model) {
        listenToFormUpdated(model);
        model.init(lastAvatarUrl, isEdit ?? false, isAnimal ?? false,
            petID.toString(), petToken.toString());
        usernameController.text = user.username ?? "";
        nameController.text = user.fullName ?? "";
        shortBioController.text = user.bio ?? "";
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: commonPaddding,
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: model.onBack,
                  ),
                ),
                AppText.titleBold(
                  isEdit ?? false ? editProfileTitle : completeProfileTitle,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                Image.asset(
                    "assets/images/on_boarding/complete_your_profile_logo.png"),
                verticalSpaceRegular,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText.captionBold(
                      "Name",
                      color: colors.black,
                    ),
                    AppText.body1Bold(
                      "*",
                      color: colors.primary,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                PhysicalModel(
                  elevation: 8,
                  color: colors.white,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF393F45).withOpacity(0.50),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              hintText: fullNameHint,
                              hintStyle: TextStyle(
                                color: Color(0xFFABB3BB),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceRegular,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText.captionBold(
                      "Username",
                      color: colors.black,
                    ),
                    AppText.body1Bold(
                      "*",
                      color: colors.primary,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                PhysicalModel(
                  elevation: 8,
                  color: colors.white,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF393F45).withOpacity(0.50),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                          child: TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              hintText: userNameHint,
                              hintStyle: TextStyle(
                                color: Color(0xFFABB3BB),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceRegular,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText.captionBold(
                      "Short Bio",
                      color: colors.black,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                PhysicalModel(
                  elevation: 8,
                  color: colors.white,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF393F45).withOpacity(0.50),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                          child: TextField(
                            controller: shortBioController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              hintText: shortBioHint,
                              hintStyle: TextStyle(
                                color: Color(0xFFABB3BB),
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(100),
              ],
            ),
          ),
        ),
        bottomSheet: GestureDetector(
          onTap: model.isValid ? model.saveProfileData : null,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: commonPaddding,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: model.isValid ? colors.primary : colors.kcLightGreyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: model.isBusy
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : Text(
                    continueButtonTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
          ),
        ),
        // body: AuthenticationLayout(
        //   busy: model.isBusy,
        //   isValid: model.isValid,
        //   onMainButtonTapped: model.saveProfileData,
        //   onBackPressed: model.onBack,
        //   onForgotPassword: null,
        //   validationMessage: model.validationMessage,
        //   title: isEdit ?? false ? editProfileTitle : completeProfileTitle,
        //   subtitle: isEdit ?? false ? "" : completeProfileSubTitle,
        //   isSocialLoginEnabled: false,
        //   showTermsText: false,
        //   mainButtonTitle: continueButtonTitle,
        //   isProfilePage: true,
        //   form: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       Image.asset(
        //           "assets/images/on_boarding/complete_your_profile_logo.png"),
        //       verticalSpaceRegular,
        //       WithTitleItem(
        //         title: "Username",
        //         isManitory: true,
        //         child: Padding(
        //           padding: commonPaddding,
        //           child: PhysicalModel(
        //             elevation: 8,
        //             color: colors.white,
        //             borderRadius: BorderRadius.circular(20),
        //             child: Container(
        //               margin: EdgeInsets.symmetric(vertical: 15),
        //               padding: EdgeInsets.symmetric(horizontal: 10),
        //               // decoration: BoxDecoration(
        //               //   color: colors.white,
        //               //   borderRadius: BorderRadius.circular(20),
        //               //   boxShadow: [
        //               //     BoxShadow(
        //               //       color: Color(0xFFC7C7C7),
        //               //       blurRadius: 8,
        //               //       spreadRadius: 4,
        //               //       offset: Offset(10, 10),
        //               //     ),
        //               //   ],
        //               // ),
        //               child: Row(
        //                 children: [
        //                   Icon(
        //                     Icons.person_outline_rounded,
        //                     color: Color(0xFF393F45).withOpacity(0.50),
        //                   ),
        //                   horizontalSpaceRegular,
        //                   Expanded(
        //                     child: TextField(
        //                       controller: usernameController,
        //                       decoration: InputDecoration(
        //                         border: InputBorder.none,
        //                         disabledBorder: InputBorder.none,
        //                         enabledBorder: InputBorder.none,
        //                         errorBorder: InputBorder.none,
        //                         focusedBorder: InputBorder.none,
        //                         focusedErrorBorder: InputBorder.none,
        //                         hintText: userNameHint,
        //                         hintStyle: TextStyle(
        //                           color: Color(0xFFABB3BB),
        //                         ),
        //                       ),
        //                       keyboardType: TextInputType.name,
        //                       textCapitalization: TextCapitalization.none,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       // Container(
        //       //   padding: EdgeInsets.symmetric(horizontal: 10),
        //       //   child: Align(
        //       //     alignment: Alignment.centerLeft,
        //       //     child: AppText.body1(
        //       //       userNameLabel,
        //       //       textAlign: TextAlign.start,
        //       //       color: colors.black,
        //       //     ),
        //       //   ),
        //       // ),
        //       AppInputField(
        //         hint: userNameHint,
        //         controller: usernameController,
        //         errorText: model.validUser(usernameController),
        //         textInputType: TextInputType.name,
        //         textCapitalization: TextCapitalization.none,
        //       ),
        //       verticalSpaceMedium,
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 10),
        //         child: Align(
        //           alignment: Alignment.centerLeft,
        //           child: AppText.body1(
        //             fullNameLabel,
        //             textAlign: TextAlign.start,
        //             color: colors.black,
        //           ),
        //         ),
        //       ),
        //       AppInputField(
        //         hint: fullNameHint,
        //         controller: nameController,
        //         textInputType: TextInputType.name,
        //         textCapitalization: TextCapitalization.sentences,
        //       ),
        //       verticalSpaceMedium,
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 10),
        //         child: Align(
        //           alignment: Alignment.centerLeft,
        //           child: AppText.body1(
        //             shortBioLabel,
        //             textAlign: TextAlign.start,
        //             color: colors.black,
        //           ),
        //         ),
        //       ),
        //       AppInputField(
        //         hint: shortBioHint,
        //         controller: shortBioController,
        //         textInputType: TextInputType.multiline,
        //         textCapitalization: TextCapitalization.sentences,
        //       ),
        //     ],
        //   ),
        // ),
      ),
      viewModelBuilder: () => ProfileCreateViewModel(user),
    );
  }
}
