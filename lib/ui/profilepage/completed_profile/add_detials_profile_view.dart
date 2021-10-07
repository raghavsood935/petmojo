import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kubelite/ui/profilepage/completed_profile/add_detials_profile_viewmodel.dart';
import 'package:kubelite/util/styles.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/main_btn.dart';
import 'package:stacked/stacked.dart';
import 'package:kubelite/util/Color.dart';

class AddDetialsProfileView extends StatelessWidget {
  const AddDetialsProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController bioTC = new TextEditingController();

    return ViewModelBuilder<AddDetialsProfileViewModel>.reactive(
      viewModelBuilder: () => AddDetialsProfileViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(model.bolbImgPath),
                ),
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
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: colors.primary,
                            child: CircleAvatar(
                              radius: 69,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: colors.lightBackgroundColor,
                                radius: 65,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: colors.primary,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        verticalSpaceMedium,
                        AppText.body("Short Bio", textAlign: TextAlign.start),
                        verticalSpaceSmall,
                        AppInputField(controller: bioTC),
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
