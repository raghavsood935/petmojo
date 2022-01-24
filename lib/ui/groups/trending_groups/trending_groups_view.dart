import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/ui/groups/trending_groups/trending_groups_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class TrendingGroups extends StatefulWidget {
  const TrendingGroups({Key? key}) : super(key: key);

  @override
  _TrendingGroupsState createState() => _TrendingGroupsState();
}

class _TrendingGroupsState extends State<TrendingGroups> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrendingGroupsViewModel>.reactive(
      viewModelBuilder: () => TrendingGroupsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: AppText.body2("Trending Groups"),
            leading: IconButton(
              onPressed: model.back,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: colors.black,
              ),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () => model.createGroup(),
                child: Image.asset(addImgPath),
              ),
              GestureDetector(
                onTap: () => model.searchGroup(),
                child: Image.asset(searchImgPath),
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                model.listOfProfiles.isEmpty
                    ? Visibility(
                        visible: !model.isLoading,
                        child: Center(
                          child: AppText.body1Bold(
                            "No result found",
                            color: colors.primary,
                          ),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: model.listOfProfiles.length,
                        itemBuilder: (context, index) => GroupTile(
                            model: model.listOfProfiles[index],
                            viewModel: model)),
                verticalSpaceRegular,
                Visibility(
                  visible: model.isLoading,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  ),
                ),
                verticalSpaceRegular,
                Visibility(
                  visible: model.listOfProfiles.isNotEmpty,
                  child: Visibility(
                    visible: !model.isEndOfList,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: GestureDetector(
                        onTap: () => model.getAllGroups(),
                        child: AppText.body1Bold(
                          "See more profiles",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
              ],
            ),
          )),
    );
  }
}

class GroupTile extends StatefulWidget {
  GroupTile({Key? key, required this.model, required this.viewModel})
      : super(key: key);

  GroupBasicInfoResponse model;
  TrendingGroupsViewModel viewModel;

  @override
  _GroupTileState createState() => _GroupTileState(model);
}

class _GroupTileState extends State<GroupTile> {
  bool isJoined = false;
  int member = 0;

  _GroupTileState(GroupBasicInfoResponse model) {
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
                trueValue: "Joined", falseValue: "  Join   ", state: true)
            : FollowingStaticBtn(
                trueValue: "Joined", falseValue: "  Join    ", state: false),
      ),
      onTap: () => widget.viewModel.inspectGroup(widget.model.Id ?? ""),
    );
  }
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Image.network(
    emptyProfileImgUrl,
    height: 45,
    width: 45,
    fit: BoxFit.cover,
  );
}
