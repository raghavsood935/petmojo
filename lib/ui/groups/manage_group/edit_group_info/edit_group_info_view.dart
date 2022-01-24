import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/manage_group/edit_group_info/edit_group_info_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/with_title_item.dart';

class EditGroupBasicInfo extends StatefulWidget {
  EditGroupBasicInfo(
      {Key? key,
      required this.groupId,
      required this.name,
      required this.avatar,
      required this.description,
      required this.hashTag})
      : super(key: key);

  String groupId;

  String avatar;
  String name;
  String description;
  List<String> hashTag;

  @override
  State<EditGroupBasicInfo> createState() => _EditGroupBasicInfoState();
}

class _EditGroupBasicInfoState extends State<EditGroupBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditGroupBasicInfoViewModel>.reactive(
      viewModelBuilder: () => EditGroupBasicInfoViewModel(),
      onModelReady: (model) => model.init(widget.groupId, widget.avatar,
          widget.name, widget.description, widget.hashTag),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Edit group info"),
        body: Padding(
          padding: commonPaddding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceRegular,
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        child: GestureDetector(
                            onTap: () => model.onImageButtonPressed(
                                ImageSource.gallery, context),
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
                              ImageSource.gallery, context),
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
                WithTitleItem(
                  title: 'Add description',
                  isManitory: false,
                  child: TextField(
                    controller: model.descriptioinTC,
                    decoration: InputDecoration(
                      hintText: "Enter a description for the group",
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
                WithTitleItem(
                  title: 'Add hashtags',
                  isManitory: false,
                  child: TextField(
                    controller: model.hashtagTC,
                    decoration: InputDecoration(
                      hintText: "Add 3 or more hashtags to get more reach",
                      suffix: model.hashtagTC.text.isNotEmpty
                          ? GestureDetector(
                              onTap: model.addHashTag,
                              child: AppText.body1Bold(
                                "ADD",
                                color: colors.primary,
                              ),
                            )
                          : SizedBox(),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: colors.kcLightGreyColor),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                verticalSpaceSmall,
                Wrap(
                  children: model.listOfHashtags
                      .map((e) => Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Chip(
                            label: AppText.caption(e),
                            onDeleted: () => model.deleteHashTag(e),
                          )))
                      .toList(),
                ),
                SizedBox(height: 100),
              ],
            ),
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
              color: colors.primary,
              // color: colors.primary,
            ),
            child: model.isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.white,
                    ),
                  )
                : AppText.subheading(
                    "Save",
                    textAlign: TextAlign.center,
                    color: Colors.white,
                  ),
          ),
          onTap: model.onSave,
        ),
      ),
    );
  }
}
