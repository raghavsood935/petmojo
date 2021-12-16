import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/group_info/group_info_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/util/utils.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/edit_button.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class GroupInfoView extends StatelessWidget {
  const GroupInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroupInfoViewModel>.reactive(
      viewModelBuilder: () => GroupInfoViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: colors.black,
            ),
            onPressed: model.back,
          ),
          actions: [
            GestureDetector(
              child: Container(
                height: 50,
                margin: EdgeInsets.only(
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AppText.body1(
                  "Manage",
                  color: colors.white,
                ),
              ),
              onTap: model.onManageTapped,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image.network(
                      model.coverImgurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(5),
                      child: EditButton.small(),
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceSmall,
            ListTile(
              title: AppText.subheading(model.groupName),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText.caption("${model.membersCount} members  "),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: colors.primary,
                  ),
                  AppText.caption(
                      "  ${model.isPrivate ? "Private" : "Public"} group"),
                ],
              ),
              trailing: Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  color: colors.mediumBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: AppText.caption(
                  "+ Invite",
                  color: colors.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText.caption(
                model.groupDescription,
                color: colors.black,
              ),
            ),
            spacedDividerBigTiny,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  CustomCircularAvatar(
                    radius: 20.0,
                    imgPath: model.myProfileImg,
                  ),
                  horizontalSpaceRegular,
                  AppText.caption(
                    createPost,
                    textAlign: TextAlign.center,
                    color: colors.kcCaptionGreyColor,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Util.getImageChild(imageIcon, 16, 16),
                        horizontalSpaceTiny,
                        AppText.caption(
                          photoVideo,
                          color: colors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            spacedDividerBigTiny,
          ],
        ),
      ),
    );
  }
}
