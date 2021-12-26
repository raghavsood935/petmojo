import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/follow_static_btn.dart';
import 'package:tamely/widgets/search_text_field.dart';
import 'guardians_view_model.dart';

class GuardiansView extends StatefulWidget {
  GuardiansView({Key? key, required this.petID, required this.petToken})
      : super(key: key);

  String petID;
  String petToken;

  @override
  _GuardiansViewState createState() => _GuardiansViewState();
}

class _GuardiansViewState extends State<GuardiansView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GuardiansViewModel>.reactive(
      viewModelBuilder: () => GuardiansViewModel(),
      // onModelReady: (model) => model.dummyStart(),
      onModelReady: (model) => model.init(widget.petID, widget.petToken),
      builder: (context, model, child) => ListView(
        physics: ScrollPhysics(),
        children: [
          SearchTextField(
            controller: model.searchTC,
            hint: "Search for profiles,keywords etc.",
            onChange: (value) => model.onSearchChange(value, false),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
          //   child: AppText.body1(
          //     inviteGuardians,
          //     color: colors.primary,
          //   ),
          // ),
          model.listOfResult.isEmpty
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
              : ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: model.listOfResult.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: AppText.body(
                        model.listOfResult[index].profileForYouResponse
                                .fullName ??
                            "-",
                        color: colors.black,
                      ),
                      subtitle: AppText.caption(model.listOfResult[index]
                              .profileForYouResponse.username ??
                          "-"),
                      leading: CustomCircularAvatar(
                        radius: 24,
                        imgPath: model.listOfResult[index].profileForYouResponse
                                .avatar ??
                            emptyProfileImgUrl,
                      ),
                      trailing: GestureDetector(
                        child: FollowingStaticBtn(
                          state: model.listOfResult[index].isRequested,
                          trueValue: "Requested",
                          falseValue: "Request",
                        ),
                        onTap: () {
                          setState(() {
                            model.listOfResult[index].onRequestedChange();
                          });
                          model.sendGuardianRequest(model.listOfResult[index]
                                  .profileForYouResponse.Id ??
                              "");
                        },
                      ),
                      onTap: () => model.inspectProfile(
                        context,
                        model.listOfResult[index].profileForYouResponse.Id ??
                            "",
                      ),
                    );
                  }),
          Visibility(visible: model.isLoading, child: verticalSpaceRegular),
          Visibility(
            visible: model.isLoading,
            child: Center(
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            ),
          ),
          Visibility(visible: model.isLoading, child: verticalSpaceRegular),
          Visibility(
            visible: model.searchTC.text.isNotEmpty,
            child: Visibility(
              visible: model.listOfResult.isNotEmpty,
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
          Visibility(visible: model.isLoading, child: verticalSpaceSmall),
          Visibility(
              visible:
                  model.searchTC.text.isEmpty && model.listOfResult.isNotEmpty,
              child: spacedDividerBigTiny),
          Visibility(
              visible: model.searchTC.text.isEmpty,
              child: Padding(
                  padding: commonPaddding,
                  child: AppText.body1Bold("Guardians"))),
          Visibility(
            visible: model.searchTC.text.isEmpty,
            child: model.isGuardianLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                : model.listOfGuardians.isEmpty
                    ? Padding(
                        padding: EdgeInsets.only(top: 75),
                        child: AppText.body1Bold(
                          "No Guardians!",
                          textAlign: TextAlign.center,
                        ),
                      )
                    : ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: model.listOfGuardians.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => model.inspectProfile(
                              context,
                              model.listOfGuardians[index]
                                      .guardianDetailsResponse!.Id ??
                                  ""),
                          child:
                              guardiansListTile(model.listOfGuardians[index]),
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}

Widget guardiansListTile(GuardianResponse model) {
  return ListTile(
    title: AppText.body(
      model.guardianDetailsResponse!.username ?? "-",
      color: colors.black,
    ),
    subtitle: AppText.caption(model.guardianDetailsResponse!.email ?? "-"),
    leading: CustomCircularAvatar(
      radius: 24,
      imgPath: model.guardianDetailsResponse!.avatar ?? emptyProfileImgUrl,
    ),
    trailing: (model.confirmed ?? false)
        ? FollowingStaticBtn(
            state: true,
            trueValue: "Added",
            falseValue: "",
          )
        : FollowingStaticBtn(
            state: true,
            trueValue: "Requested",
            falseValue: "",
          ),
  );
}
