import 'dart:core';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_fisrt_page/create_group_fisrt_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/with_title_item.dart';

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
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          right: 15,
          left: 15,
          bottom: 100,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DottedBorder(
                color: colors.kcPrimaryTextColor,
                strokeWidth: 1,
                strokeCap: StrokeCap.round,
                dashPattern: [15, 5],
                child: Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: colors.kcGreyBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(cameraIcon),
                      verticalSpaceTiny,
                      AppText.caption("Upload cover photo")
                    ],
                  ),
                ),
              ),
              verticalSpaceSmall,
              WithTitleItem(
                  title: "Group name",
                  child: AppInputField(
                      controller: model.groupNameTC,
                      hint: "Type name of your group"),
                  isManitory: true),
              verticalSpaceSmall,
              WithTitleItem(
                  title: "Choose privacy",
                  child: DropdownButton<String>(
                    isExpanded: true,
                    itemHeight: null,
                    icon: Icon(Icons.arrow_drop_down),
                    value: model.groupPrivacy,
                    items: model.groupPrivacyValues
                        .map((item) => DropdownMenuItem<String>(
                              child: AppText.body1(item,
                                  color: item == select
                                      ? colors.kcLightGreyColor
                                      : colors.black),
                              value: item,
                            ))
                        .toList(),
                    onChanged: (value) => model.onGroupPrivacyChange(value),
                  ),
                  isManitory: true),
            ],
          ),
        ),
      ),
    );
  }
}
