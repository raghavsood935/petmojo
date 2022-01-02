import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/group_response/get_joined_groups_response.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/ui/groups/my_groups/my_groups_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

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
      onModelReady: (model) => model.init(),
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
            model.isJoinedGroupLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                : model.listOfManagingGroups.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.body1(
                                "Find the groups you are the admin of"),
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
                        physics: ScrollPhysics(),
                        itemCount: model.listOfManagingGroups.length,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => model.inspectGroup(
                                model.listOfManagingGroups[index].group!.Id ??
                                    ""),
                            child: groupsListTile(
                                model.listOfManagingGroups[index])),
                        separatorBuilder: (BuildContext context, int index) =>
                            spacedDividerTiny,
                      ),
            spacedDividerBigTiny,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppText.body2("Groups you have joined"),
            ),
            verticalSpaceTiny,
            model.isJoinedGroupLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                : model.listOfJoinedGroups.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.body1(
                                "See the list of groups you have joined"),
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
                        physics: ScrollPhysics(),
                        itemCount: model.listOfJoinedGroups.length,
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: () => model.inspectGroup(
                                model.listOfJoinedGroups[index].group!.Id ??
                                    ""),
                            child: groupsListTile(
                                model.listOfJoinedGroups[index])),
                        separatorBuilder: (context, index) => spacedDividerTiny,
                      ),
            spacedDividerBigTiny,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppText.body2("You might also like"),
            ),
            model.isAllGroupLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) => AlsoLikedGroupsListTile(
                        model: model.listOfAllGroups[index], viewModel: model),
                    separatorBuilder: (context, index) => spacedDividerTiny,
                    itemCount: model.listOfAllGroups.length,
                  ),
          ],
        ),
      ),
    );
  }
}

class AlsoLikedGroupsListTile extends StatefulWidget {
  AlsoLikedGroupsListTile(
      {Key? key, required this.model, required this.viewModel})
      : super(key: key);

  GroupBasicInfoResponse model;
  MyGroupsTabViewModel viewModel;

  @override
  _AlsoLikedGroupsListTileState createState() =>
      _AlsoLikedGroupsListTileState(model);
}

class _AlsoLikedGroupsListTileState extends State<AlsoLikedGroupsListTile> {
  bool isJoined = false;
  int member = 0;

  _AlsoLikedGroupsListTileState(GroupBasicInfoResponse model) {
    isJoined = model.isMember ?? false;
    member = model.members ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText.body1(widget.model.name ?? "-"),
      subtitle: AppText.caption("$member members"),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          widget.model.avatar ?? emptyProfileImgUrl,
          height: 45,
          width: 45,
          fit: BoxFit.cover,
          errorBuilder: errorBuilder,
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          if (!isJoined) {
            setState(() {
              isJoined = !isJoined;
              member++;
            });
            widget.viewModel.joinGroup(widget.model.Id ?? "");
          }
        },
        child: isJoined
            ? FollowingStaticBtn(
                trueValue: "Joined", falseValue: "Join", state: true)
            : FollowingStaticBtn(
                trueValue: "Joined", falseValue: "Join", state: false),
      ),
    );
  }
}

Widget groupsListTile(GetJoinedGroupInfoResponse model) {
  return ListTile(
    title: AppText.body1(model.group!.name ?? "-"),
    subtitle: AppText.caption("${model.group!.members ?? 0} members"),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        model.group!.avatar ?? emptyProfileImgUrl,
        height: 45,
        width: 45,
        fit: BoxFit.cover,
        errorBuilder: errorBuilder,
      ),
    ),
  );
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Image.network(
    emptyProfileImgUrl,
    height: 45,
    width: 45,
    fit: BoxFit.cover,
  );
}
