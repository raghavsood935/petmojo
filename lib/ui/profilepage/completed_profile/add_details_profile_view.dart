import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/ui/profilepage/completed_profile/add_details_profile_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/main_btn.dart';
import 'package:stacked/stacked.dart';

class AddDetailsProfileView extends StatelessWidget {
  const AddDetailsProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController bioTC = new TextEditingController();

    return ViewModelBuilder<AddDetailsProfileViewModel>.reactive(
      viewModelBuilder: () => AddDetailsProfileViewModel(),
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
                          icon: Icon(Icons.arrow_back),
                        ),
                        verticalSpaceRegular,
                        AppText.headingThree("Complete your Profile",
                            textAlign: TextAlign.center),
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
                                    if (model.imagePath.isEmpty)
                                      CircleAvatar(
                                        backgroundColor: colors.primary,
                                        radius: 65,
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          color: colors.white,
                                          size: 50,
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
                        AppText.body("Short Bio", textAlign: TextAlign.start),
                        verticalSpaceSmall,
                        AppInputField(
                          controller: bioTC,
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
                    visible: bioTC.text.isNotEmpty &&
                        !model.checkIfTheKeyboardIsOpen(context),
                    child: MainButtonWidget(
                        onMainButtonTapped: () {}, mainButtonTitle: "Save"),
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
