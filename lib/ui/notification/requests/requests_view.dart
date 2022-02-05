import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/animal_profile_response.dart';
import 'package:tamely/models/list_of_pending_relation_requests.dart';
import 'package:tamely/models/profile_model_response.dart';
import 'package:tamely/ui/notification/requests/requests_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestsViewModel>.reactive(
      viewModelBuilder: () => RequestsViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Padding(
        padding: commonPaddding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            AppText.body1Bold(
              model.isHuman ? "Guardian Requests" : "Relation Requests",
            ),
            model.isLoading
                ? Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: colors.primary,
                      ),
                    ),
                  )
                : (model.isHuman
                            ? model.listOfGuardianRequests
                            : model.listOfRelationRequests)
                        .isEmpty
                    ? Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Center(
                          child: AppText.body1Bold(
                            "No request found!",
                            color: colors.primary,
                          ),
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 20),
                        itemCount: (model.isHuman
                                ? model.listOfGuardianRequests
                                : model.listOfRelationRequests)
                            .length,
                        itemBuilder: (builder, index) => model.isHuman
                            ? GuardianRequestTile(
                                model: model.listOfGuardianRequests[index],
                                viewModel: model)
                            : RelationRequestTile(
                                model: model.listOfRelationRequests[index],
                                viewModel: model),
                        separatorBuilder: (context, index) => spacedDividerTiny,
                      ),
          ],
        ),
      ),
    );
  }
}

class GuardianRequestTile extends StatefulWidget {
  GuardianRequestTile({Key? key, required this.model, required this.viewModel})
      : super(key: key);

  AnimalProfileResponse model;
  RequestsViewModel viewModel;

  @override
  _GuardianRequestTileState createState() => _GuardianRequestTileState();
}

class _GuardianRequestTileState extends State<GuardianRequestTile> {
  bool isReacted = false;
  bool reactedStatus = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CustomCircularAvatar(
        radius: 24,
        imgPath: widget.model.avatar ?? emptyProfileImgUrl,
        isHuman: true,
      ),
      title: AppText.body1Bold(widget.model.username ?? "-"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.caption("Requesting you to became it's guardian"),
          verticalSpaceTiny,
          isReacted
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: reactedStatus
                      ? FollowingStaticBtn(
                          trueValue: "Accepted", falseValue: "", state: true)
                      : FollowingStaticBtn(
                          trueValue: "Declined", falseValue: "", state: true),
                )
              : Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.viewModel
                            .declineGuardianRequest(widget.model.Id ?? "-");
                        setState(() {
                          isReacted = true;
                          reactedStatus = false;
                        });
                      },
                      child: FollowingStaticBtn(
                          trueValue: "Decline", falseValue: "", state: true),
                    ),
                    horizontalSpaceTiny,
                    GestureDetector(
                      onTap: () {
                        widget.viewModel
                            .acceptGuardianRequest(widget.model.Id ?? "");
                        setState(() {
                          isReacted = true;
                          reactedStatus = true;
                        });
                      },
                      child: FollowingStaticBtn(
                          trueValue: "", falseValue: "Accept", state: false),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class RelationRequestTile extends StatefulWidget {
  RelationRequestTile({Key? key, required this.model, required this.viewModel})
      : super(key: key);

  RelationRequestResponse model;
  RequestsViewModel viewModel;

  @override
  _RelationRequestTileState createState() => _RelationRequestTileState();
}

class _RelationRequestTileState extends State<RelationRequestTile> {
  bool isReacted = false;
  bool reactedStatus = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CustomCircularAvatar(
        radius: 24,
        imgPath: widget.model.animalProfile!.avatar ?? emptyProfileImgUrl,
        isHuman: false,
      ),
      title: AppText.body1Bold(widget.model.animalProfile!.name ?? "-"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.caption("Requesting to became your ${widget.model.relation}"),
          verticalSpaceTiny,
          isReacted
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: reactedStatus
                      ? FollowingStaticBtn(
                          trueValue: "Accepted", falseValue: "", state: true)
                      : FollowingStaticBtn(
                          trueValue: "Declined", falseValue: "", state: true),
                )
              : Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.viewModel.declineRelationRequest(
                            widget.model.Id ?? "-",
                            widget.model.animalProfile!.Id ?? "-");
                        setState(() {
                          isReacted = true;
                          reactedStatus = false;
                        });
                      },
                      child: FollowingStaticBtn(
                          trueValue: "Decline", falseValue: "", state: true),
                    ),
                    horizontalSpaceTiny,
                    GestureDetector(
                      onTap: () {
                        widget.viewModel.acceptRelationRequest(
                            widget.model.animalProfile!.Id ?? "-");
                        setState(() {
                          isReacted = true;
                          reactedStatus = true;
                        });
                      },
                      child: FollowingStaticBtn(
                          trueValue: "", falseValue: "Accept", state: false),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
