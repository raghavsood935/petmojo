import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/group_info/group_info_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/edit_button.dart';

class GroupInfoView extends StatelessWidget {
  const GroupInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroupInfoViewModel>.reactive(
      viewModelBuilder: () => GroupInfoViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: AppText.caption("Manage"),
              ),
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
                  Image.network(
                    model.coverImgurl,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      color: colors.kcMediumGreyColor,
                      padding: EdgeInsets.all(5),
                      child: EditButton(),
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
                    radius: 25.0,
                    imgPath: model.myProfileImg,
                  ),
                  Expanded(
                    child: AppText.caption(
                      "Create a pawsome post",
                      textAlign: TextAlign.center,
                      color: colors.kcCaptionGreyColor,
                    ),
                  ),
                  Icon(Icons.photo, color: colors.primary),
                  GestureDetector(
                    child: AppText.caption(
                      "Photo/Video",
                      color: colors.primary,
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
