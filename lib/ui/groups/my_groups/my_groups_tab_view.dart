import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/my_groups/my_groups_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_btn.dart';

class MyGroupsTabView extends StatefulWidget {
  const MyGroupsTabView({Key? key}) : super(key: key);

  @override
  _MyGroupsTabViewState createState() => _MyGroupsTabViewState();
}

class _MyGroupsTabViewState extends State<MyGroupsTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyGroupsTabViewModel>.reactive(
      viewModelBuilder: () => MyGroupsTabViewModel(),
      onModelReady : (model) => model.dummyInitial(),
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.body("Groups you manage"),
          verticalSpaceTiny,
          model.listOfManagingGroups.isEmpty
              ? newThingWidget("Find the groups you are the admin of",
                  "Create group", model.createGroup())
              : ListView.separated(
                  shrinkWrap: true,
                  itemCount: model.listOfManagingGroups.length,
                  itemBuilder: (context, index) =>
                      groupsListTile(model.listOfManagingGroups[index]),
                  separatorBuilder: (BuildContext context, int index) =>
                      spacedDividerTiny,
                ),
          spacedDividerBigTiny,
          AppText.body("Groups you have joined"),
          verticalSpaceTiny,
          model.listOfJoinedGroups.isEmpty
              ? newThingWidget("see the list of groups you have joined",
                  "Discover groups", model.searchGroups())
              : ListView.separated(
                  shrinkWrap: true,
                  itemCount: model.listOfJoinedGroups.length,
                  itemBuilder: (context, index) =>
                      groupsListTile(model.listOfJoinedGroups[index]),
                  separatorBuilder: (context, index) => spacedDividerTiny,
                ),
          spacedDividerBigTiny,
          AppText.body("You might also like"),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                groupsListTile(model.listOfAlsoLikedGroups[index]),
            separatorBuilder: (context, index) => spacedDividerTiny,
            itemCount: model.listOfAlsoLikedGroups.length,
          ),
        ],
      ),
    );
  }
}

Widget groupsListTile(GroupsModel model) {
  return ListTile(
    title: AppText.body1(model.groupName),
    subtitle: AppText.caption("${model.membersCount} members"),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        model.groupProfileImgUrl,
        height: 45,
        width: 45,
      ),
    ),
    trailing:
        FollowBtn(initialState: false, trueValue: "Joined", falseValue: "Join"),
  );
}

Widget alsoLikeGroupsListTile(GroupsModel model) {
  return ListTile(
    title: AppText.body1(model.groupName),
    subtitle: AppText.caption("${model.membersCount} members"),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        model.groupProfileImgUrl,
        height: 45,
        width: 45,
      ),
    ),
  );
}

Widget newThingWidget(String description, String buttonText, Future onTap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        AppText.caption(description),
        verticalSpaceTiny,
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: AppText.caption(
              buttonText,
              color: colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
