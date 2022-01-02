import 'dart:core';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_fisrt_page/create_group_first_page_view_model.dart';
import 'package:tamely/ui/groups/create_group/create_group_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/with_title_item.dart';

import '../create_group_view.dart';

class CreateGroupFirstView extends StatefulWidget {
  const CreateGroupFirstView({Key? key}) : super(key: key);

  @override
  _CreateGroupFirstViewState createState() => _CreateGroupFirstViewState();
}

class _CreateGroupFirstViewState extends State<CreateGroupFirstView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupFirstViewModel>.reactive(
      viewModelBuilder: () => CreateGroupFirstViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CreateGroupView(
                currentIndex: 0,
                onSkipPressed: () {},
                isFromEdit: false,
              ),
              Padding(
                padding: commonPaddding,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            child: GestureDetector(
                                onTap: () => model.onImageButtonPressed(
                                    ImageSource.gallery, context, 0),
                                child: model.avatarUrl == ""
                                    ? CircleAvatar(
                                        backgroundColor: colors.primary,
                                        radius: 50,
                                        child: SvgPicture.asset(
                                          cameraIcon,
                                          color: colors.white,
                                        ),
                                      )
                                    : CustomCircularAvatar(
                                        imgPath: model.avatarUrl,
                                        radius: 50,
                                      )),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: GestureDetector(
                              onTap: () => model.onImageButtonPressed(
                                  ImageSource.gallery, context, 0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: colors.primary,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceSmall,
                    DottedBorder(
                      color: colors.kcPrimaryTextColor,
                      strokeWidth: 1,
                      strokeCap: StrokeCap.round,
                      dashPattern: [15, 5],
                      child: GestureDetector(
                        onTap: () => model.onImageButtonPressed(
                            ImageSource.gallery, context, 1),
                        child: Container(
                          height: 200,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: colors.kcGreyBackground,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: model.coverUrl == ""
                              ? Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(cameraIcon),
                                    verticalSpaceTiny,
                                    AppText.caption("Upload cover photo")
                                  ],
                                )
                              : Image.network(
                                  model.coverUrl,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    WithTitleItem(
                        title: "Group name",
                        child: TextField(
                          controller: model.groupNameTC,
                          decoration: InputDecoration(
                            hintText: "Type name of your group",
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: colors.kcLightGreyColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: colors.kcLightGreyColor),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: colors.kcLightGreyColor),
                            ),
                          ),
                          onChanged: (value) => model.onGroupNameChanged(value),
                        ),
                        // AppInputField(
                        //     isPaddingNeeded: false,
                        //     controller: model.groupNameTC,
                        //     hint: "Type name of your group"),
                        isManitory: true),
                    verticalSpaceSmall,
                    // WithTitleItem(
                    //     title: "Choose privacy",
                    //     child: DropdownButton<String>(
                    //       isExpanded: true,
                    //       itemHeight: null,
                    //       icon: Icon(Icons.arrow_drop_down),
                    //       value: model.groupPrivacy,
                    //       items: model.groupPrivacyValues
                    //           .map((item) => DropdownMenuItem<String>(
                    //                 child: AppText.body1(item,
                    //                     color: item == select
                    //                         ? colors.kcLightGreyColor
                    //                         : colors.black),
                    //                 value: item,
                    //               ))
                    //           .toList(),
                    //       onChanged: (value) => model.onGroupPrivacyChange(value),
                    //     ),
                    //     isManitory: true),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: GestureDetector(
          child: Container(
            width: double.maxFinite,
            height: 60,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: model.isValid ? colors.primary : colors.kcCaptionGreyColor,
              // color: colors.primary,
            ),
            child: model.isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.white,
                    ),
                  )
                : AppText.subheading(
                    "Create group",
                    textAlign: TextAlign.center,
                    color: Colors.white,
                  ),
          ),
          onTap: model.createGroup,
        ),
      ),
    );
  }
}
