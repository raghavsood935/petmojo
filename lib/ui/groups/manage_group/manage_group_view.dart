import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/manage_group/manage_group_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class ManageGroupView extends StatelessWidget {
  ManageGroupView(
      {Key? key,
      required this.groupId,
      required this.name,
      required this.avatar,
      required this.description,
      required this.hashTag,
      required this.isMember,
      required this.isAdmin})
      : super(key: key);

  String groupId;

  String avatar;
  String name;
  String description;
  List<String> hashTag;

  bool isMember;
  bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ManageGroupViewModel>.reactive(
      viewModelBuilder: () => ManageGroupViewModel(),
      onModelReady: (model) => model.init(groupId),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Manage Group"),
        body: ListView(
          children: [
            ListTile(
              title: AppText.body1Bold(
                "Edit Group Info",
                color: colors.kcPrimaryTextColor,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () =>
                  model.gotToEditGrpInfo(avatar, name, description, hashTag),
            ),
            ListTile(
              title: AppText.body1Bold(
                "Members",
                color: colors.kcPrimaryTextColor,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () => model.gotToMember(isMember, isAdmin),
            ),
            // ListTile(
            //   title: AppText.body1Bold(
            //     "Location",
            //     color: colors.kcPrimaryTextColor,
            //   ),
            //   trailing: Icon(Icons.arrow_forward_ios_outlined),
            //   onTap: model.gotToLocation,
            // ),
            ListTile(
              title: AppText.body1Bold(
                "Delete Group",
                color: colors.red,
              ),
              leading: Icon(
                Icons.delete_outline_rounded,
                color: colors.red,
              ),
              onTap: model.deleteGroup,
            ),
          ],
        ),
      ),
    );
  }
}
