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
      onModelReady: (model) => model.dummyInitial(),
      builder: (context, model, child) => SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: AppText.body2("Groups you manage"),
            ),
            verticalSpaceTiny,
            model.listOfManagingGroups.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.body1("Find the groups you are the admin of"),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: colors.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: AppText.body1(
                              "Create group",
                              color: colors.white,
                            ),
                          ),
                          onTap: () => model.createGroup(),
                        )
                      ],
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    itemCount: model.listOfManagingGroups.length,
                    itemBuilder: (context, index) =>
                        groupsListTile(model.listOfManagingGroups[index]),
                    separatorBuilder: (BuildContext context, int index) =>
                        spacedDividerTiny,
                  ),
            spacedDividerBigTiny,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppText.body2("Groups you have joined"),
            ),
            verticalSpaceTiny,
            model.listOfJoinedGroups.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.body1("See the list of groups you have joined"),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: colors.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: AppText.body1(
                              "Discover groups",
                              color: colors.white,
                            ),
                          ),
                          onTap: () => model.searchGroups(),
                        )
                      ],
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    itemCount: model.listOfJoinedGroups.length,
                    itemBuilder: (context, index) =>
                        groupsListTile(model.listOfJoinedGroups[index]),
                    separatorBuilder: (context, index) => spacedDividerTiny,
                  ),
            spacedDividerBigTiny,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppText.body2("You might also like"),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) =>
                  alsoLikedGroupsListTile(model.listOfAlsoLikedGroups[index]),
              separatorBuilder: (context, index) => spacedDividerTiny,
              itemCount: model.listOfAlsoLikedGroups.length,
            ),
          ],
        ),
      ),
    );
  }
}

Widget alsoLikedGroupsListTile(GroupsModel model) {
  return ListTile(
    title: AppText.body1(model.groupName),
    subtitle: AppText.caption("${model.membersCount} members"),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        model.groupProfileImgUrl,
        height: 45,
        width: 45,
        fit: BoxFit.cover,
      ),
    ),
    trailing:
        FollowBtn(initialState: false, trueValue: "Joined", falseValue: "Join"),
  );
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
        fit: BoxFit.cover,
      ),
    ),
  );
}
