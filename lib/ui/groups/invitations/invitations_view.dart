import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/group_response/pending_groups_invitations_response.dart';
import 'package:tamely/ui/groups/invitations/invitations_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class InvitationsTabView extends StatefulWidget {
  const InvitationsTabView({Key? key}) : super(key: key);

  @override
  _InvitationsTabViewState createState() => _InvitationsTabViewState();
}

class _InvitationsTabViewState extends State<InvitationsTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InvitationsTabViewModel>.reactive(
      viewModelBuilder: () => InvitationsTabViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => model.isLoading
          ? Center(
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            )
          : model.listOfInvitations.isEmpty
              ? Center(
                  child: AppText.caption("No Invitation yet"),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) => InvitationListTile(
                      model: model.listOfInvitations[index], viewModel: model),
                  separatorBuilder: (context, index) => spacedDividerTiny,
                  itemCount: model.listOfInvitations.length,
                ),
    );
  }
}

class InvitationListTile extends StatefulWidget {
  InvitationListTile({Key? key, required this.model, required this.viewModel})
      : super(key: key);

  GroupInvitationResponse model;
  InvitationsTabViewModel viewModel;

  @override
  _InvitationListTileState createState() => _InvitationListTileState();
}

class _InvitationListTileState extends State<InvitationListTile> {
  bool isReacted = false;
  bool reactedStatus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: AppText.body1Bold(widget.model.group!.name ?? "-"),
          subtitle: AppText.caption(
              "Invitation by ${widget.model.personInvited!.username}"),
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: colors.primary,
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.model.group!.avatar ?? emptyProfileImgUrl,
                height: 45,
                width: 45,
                fit: BoxFit.cover,
                errorBuilder: errorBuilder,
              ),
            ),
          ),
          trailing: Visibility(
            visible: isReacted,
            child: reactedStatus
                ? FollowingStaticBtn(
                    trueValue: "Confirmed",
                    falseValue: "",
                    state: true,
                    isMedium: true,
                  )
                : FollowingStaticBtn(
                    trueValue: "Declined",
                    falseValue: "",
                    state: true,
                    isMedium: true,
                  ),
          ),
        ),
        Visibility(
          visible: !isReacted,
          child: Padding(
            padding: commonPaddding,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.viewModel.declineInvitation(widget.model.Id ?? "");
                      setState(() {
                        isReacted = true;
                        reactedStatus = false;
                      });
                    },
                    child: FollowingStaticBtn(
                      trueValue: "Decline",
                      falseValue: "",
                      state: true,
                      isMedium: true,
                    ),
                  ),
                ),
                horizontalSpaceSmall,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.viewModel.joinGroup(widget.model.Id ?? "");
                      setState(() {
                        isReacted = true;
                        reactedStatus = true;
                      });
                    },
                    child: FollowingStaticBtn(
                      trueValue: "",
                      falseValue: "Confirm",
                      state: false,
                      isMedium: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
