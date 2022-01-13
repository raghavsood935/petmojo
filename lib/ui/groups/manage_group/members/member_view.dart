import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/group_response/get_all_group_members_response.dart';
import 'package:tamely/ui/groups/manage_group/members/member_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class MembersView extends StatelessWidget {
  MembersView(
      {Key? key,
      required this.groupId,
      required this.isMember,
      required this.isAdmin})
      : super(key: key);

  String groupId;

  bool isMember;
  bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MemberViewModel>.reactive(
      viewModelBuilder: () => MemberViewModel(),
      onModelReady: (model) => model.init(groupId, isMember),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () => model.back(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colors.white,
            title: AppText.titleBold("Members"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: colors.black,
              ),
              onPressed: model.back,
            ),
            actions: [
              GestureDetector(
                child: Visibility(
                  visible: isMember,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: colors.mediumBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: AppText.body1(
                      "+Invite",
                      color: colors.primary,
                    ),
                  ),
                ),
                onTap: model.onInviteTapped,
              ),
            ],
          ),
          body: Column(
            mainAxisAlignment: model.members.isEmpty
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              model.members.isEmpty
                  ? Visibility(
                      visible: !model.isLoading,
                      child: Center(
                        child: AppText.body1Bold(
                          "No one joined yet!",
                          color: colors.primary,
                        ),
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 20),
                      itemCount: model.members.length,
                      itemBuilder: (builder, index) => MemberListTile(
                        model: model.members[index],
                        viewModel: model,
                        index: index,
                        isAdmin: isAdmin,
                      ),
                      separatorBuilder: (context, index) => spacedDividerTiny,
                    ),
              Visibility(
                visible: model.isLoading,
                child: Center(
                  child: CircularProgressIndicator(
                    color: colors.primary,
                  ),
                ),
              ),
              Visibility(
                visible: model.members.isNotEmpty,
                child: Visibility(
                  visible: !model.isEndOfList,
                  child: Visibility(
                    visible: !model.isLoading,
                    child: GestureDetector(
                      onTap: () => model.getMembers(false),
                      child: AppText.body1Bold(
                        "See more profiles",
                        color: colors.primary,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: Visibility(
            visible: model.isAbleToLeave,
            child: Visibility(
              visible: model.isMember,
              child: FloatingActionButton(
                onPressed: model.leaveGroup,
                child: Icon(
                  Icons.logout,
                  color: colors.white,
                ),
                backgroundColor: colors.primary,
                tooltip: "Leave this Group",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MemberListTile extends StatelessWidget {
  MemberListTile(
      {Key? key,
      required this.model,
      required this.viewModel,
      required this.index,
      required this.isAdmin})
      : super(key: key);

  GroupMemberResponse model;
  MemberViewModel viewModel;
  int index;
  bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText.body(model.user!.fullname ?? model.user!.name ?? "-"),
      subtitle: Row(
        children: [
          Expanded(
            flex: 6,
            child: AppText.body1(model.user!.username ?? "-"),
          ),
          Expanded(
            flex: 2,
            child: Visibility(
              visible: model.isAdmin ?? false,
              child: AppText.body1Bold(
                "  Admin",
                color: colors.blueColor,
              ),
            ),
          ),
        ],
      ),
      leading: CustomCircularAvatar(
        radius: 24,
        imgPath: model.user!.avatar ?? emptyProfileImgUrl,
      ),
      trailing: Visibility(
        visible: isAdmin,
        child: Visibility(
          visible: (model.user!.Id) !=
              (viewModel.isHuman ? viewModel.humanId : viewModel.petId),
          child: IconButton(
            onPressed: () => viewModel.onActionPressed(
              model.user!.Id ?? "",
              model.userType ?? "",
              index,
              model.isAdmin ?? false,
            ),
            icon: Icon(Icons.more_horiz),
          ),
        ),
      ),
    );
  }
}
