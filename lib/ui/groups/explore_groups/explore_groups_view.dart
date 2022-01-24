import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/ui/groups/explore_groups/explore_groups_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_static_btn.dart';
import 'package:tamely/widgets/search_text_field.dart';

class ExploreGroupView extends StatelessWidget {
  const ExploreGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExploreGroupViewModel>.reactive(
      onModelReady: (model) => model.init(),
      viewModelBuilder: () => ExploreGroupViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: AppText.body2("Explore Groups"),
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
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: IconButton(
              //         icon: Icon(
              //           Icons.arrow_back,
              //           color: colors.black,
              //         ),
              //         onPressed: model.goBack,
              //       ),
              //     ),
              //     Expanded(
              //       flex: 10,
              //       child: SearchTextField(
              //         controller: model.searchTC,
              //         hint: "Search for profiles,keywords etc.",
              //         onChange: (value) => model.onSearchChange(value, false),
              //       ),
              //     ),
              //   ],
              // ),
              spacedDividerTiny,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: SearchTextField(
                  controller: model.searchTC,
                  hint: "Search for Group",
                  onChange: (value) => model.onSearchChange(value, false),
                ),
              ),
              model.listOfProfiles.isEmpty
                  ? Visibility(
                      visible: model.searchTC.text.isNotEmpty,
                      child: Visibility(
                        visible: !model.isLoading,
                        child: Center(
                          child: AppText.body1Bold(
                            "No result found",
                            color: colors.primary,
                          ),
                        ),
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: model.listOfProfiles.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => model
                            .inspectGroup(model.listOfProfiles[index].Id ?? ""),
                        child: AlsoLikedGroupsListTile(
                          model: model.listOfProfiles[index],
                          viewModel: model,
                        ),
                      ),
                      separatorBuilder: (context, index) => spacedDividerTiny,
                    ),
              verticalSpaceRegular,
              Visibility(
                visible: model.isLoading,
                child: CircularProgressIndicator(
                  color: colors.primary,
                ),
              ),
              verticalSpaceRegular,
              Visibility(
                visible: model.searchTC.text.isNotEmpty,
                child: Visibility(
                  visible: model.listOfProfiles.isNotEmpty,
                  child: Visibility(
                    visible: !model.isEndOfList,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: GestureDetector(
                        onTap: () =>
                            model.onSearchChange(model.searchTC.text, true),
                        child: AppText.body1Bold(
                          "See more profiles",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}

class AlsoLikedGroupsListTile extends StatefulWidget {
  AlsoLikedGroupsListTile(
      {Key? key, required this.model, required this.viewModel})
      : super(key: key);

  ProfileForYouResponse model;
  ExploreGroupViewModel viewModel;

  @override
  _AlsoLikedGroupsListTileState createState() =>
      _AlsoLikedGroupsListTileState(model);
}

class _AlsoLikedGroupsListTileState extends State<AlsoLikedGroupsListTile> {
  bool isJoined = false;

  _AlsoLikedGroupsListTileState(ProfileForYouResponse model) {
    isJoined = model.isMember ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText.body1(widget.model.name ?? "-"),
      subtitle: AppText.caption("${widget.model.members ?? 0} members"),
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
