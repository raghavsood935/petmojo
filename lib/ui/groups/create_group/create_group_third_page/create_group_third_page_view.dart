import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/ui/groups/create_group/create_group_third_page/create_group_third_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/follow_static_btn.dart';
import 'package:tamely/widgets/main_btn.dart';
import 'package:tamely/widgets/search_text_field.dart';

import '../create_group_view.dart';

class CreateGroupThirdView extends StatefulWidget {
  CreateGroupThirdView(
      {Key? key, required this.groupId, required this.isFromEditView})
      : super(key: key);

  String groupId;
  bool isFromEditView;
  @override
  _CreateGroupThirdViewState createState() => _CreateGroupThirdViewState();
}

class _CreateGroupThirdViewState extends State<CreateGroupThirdView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupThirdViewModel>.reactive(
      viewModelBuilder: () => CreateGroupThirdViewModel(),
      onModelReady: (model) => model.init(widget.groupId),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CreateGroupView(
                currentIndex: 2,
                onSkipPressed: () => model.goToNextPage(false),
                isFromEdit: widget.isFromEditView,
              ),
              SearchTextField(
                controller: model.searchTC,
                hint: "Search for profiles,keywords etc.",
                onChange: (value) => model.onSearchChange(value, false),
                isPaddingNeeded: false,
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
                  : GestureDetector(
                      onTap: () {
                        SystemChannels.textInput.invokeMethod('TextInput.hide');
                      },
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: ScrollPhysics(),
                        itemCount: model.listOfProfiles.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => () {},
                          child: ResultProfileListTile(
                            model: model.listOfProfiles[index],
                            viewModel: model,
                          ),
                        ),
                      ),
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
              verticalSpaceLarge
            ],
          ),
        ),
        bottomSheet: MainButtonWidget(
            onMainButtonTapped: () => model.goToNextPage(widget.isFromEditView),
            mainButtonTitle: "Done"),
      ),
    );
  }
}

class ResultProfileListTile extends StatefulWidget {
  ResultProfileListTile({
    Key? key,
    required this.model,
    required this.viewModel,
  }) : super(key: key);

  ProfileForYouResponse model;
  CreateGroupThirdViewModel viewModel;

  @override
  _ResultProfileListTileState createState() => _ResultProfileListTileState();
}

class _ResultProfileListTileState extends State<ResultProfileListTile> {
  bool isInvited = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText.body(
        widget.model.fullName ?? widget.model.name ?? "-",
        color: colors.black,
      ),
      subtitle: AppText.caption(widget.model.username ?? "-"),
      leading: CustomCircularAvatar(
        radius: 24,
        imgPath: widget.model.avatar ?? emptyProfileImgUrl,
      ),
      trailing: GestureDetector(
        onTap: () {
          if (!isInvited) {
            setState(() {
              isInvited = !isInvited;
            });
            widget.viewModel
                .sendInvite(widget.model.Id ?? "", widget.model.type ?? "");
          }
        },
        child: isInvited
            ? FollowingStaticBtn(
                trueValue: "Invited", falseValue: "Invite", state: true)
            : FollowingStaticBtn(
                trueValue: "Invited", falseValue: "Invite", state: false),
      ),
    );
  }
}
