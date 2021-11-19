import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/completed_profile/add_details_profile_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

class AddDetailsProfileView extends StatelessWidget {
  AddDetailsProfileView(
      {Key? key, required this.lastUrl, required this.lastBio})
      : super(key: key);
  String lastUrl;
  String lastBio;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddDetailsProfileViewModel>.reactive(
      viewModelBuilder: () => AddDetailsProfileViewModel(),
      onModelReady: (model) => model.setPreviousValues(lastUrl, lastBio),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Stack(
              children: [
                // Positioned(
                //   top: 0,
                //   right: 0,
                //   child: Image.asset(model.bolbImgPath),
                // ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: model.goBack,
                          icon: Icon(
                            Icons.arrow_back,
                            color: colors.black,
                          ),
                        ),
                        verticalSpaceRegular,
                        Align(
                          alignment: Alignment.center,
                          child: AppText.headingThree("Complete your Profile"),
                        ),
                        verticalSpaceRegular,
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              model.onImageButtonPressed(
                                  ImageSource.gallery, context);
                            },
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: colors.primary,
                              child: CircleAvatar(
                                radius: 67,
                                backgroundColor: colors.kcLightGreyBackground,
                                child: Stack(
                                  children: [
                                    if (model.imagePath.isEmpty ||
                                        model.avatarUrl.isEmpty)
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
                                            child:
                                                Image.network(model.avatarUrl),
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
                                                  File(model.imagePath))),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        verticalSpaceMedium,
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: AppText.body("Short Bio",
                              textAlign: TextAlign.start),
                        ),
                        verticalSpaceTiny,
                        AppInputField(
                          controller: model.bioTC,
                          hint: "We would love to know more about you!",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Visibility(
                    visible: model.bioTC.text.isNotEmpty &&
                        !model.checkIfTheKeyboardIsOpen(context),
                    child: MainButtonWidget(
                      onMainButtonTapped: model.changeDetails,
                      mainButtonTitle: "Save",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
