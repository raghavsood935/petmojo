import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/search_text_field.dart';

import 'guardians_view_model.dart';

class GuardiansView extends StatefulWidget {
  const GuardiansView({Key? key}) : super(key: key);

  @override
  _GuardiansViewState createState() => _GuardiansViewState();
}

class _GuardiansViewState extends State<GuardiansView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GuardiansViewModel>.reactive(
      viewModelBuilder: () => GuardiansViewModel(),
      onModelReady: (model) => model.dummyStart(),
      builder: (context, model, child) => ListView(
        physics: ScrollPhysics(),
        children: [
          SearchTextField(
            controller: model.searchTC,
            hint: "Search for guardians",
            onChange: model.searchOnChange,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppText.body1(
              inviteGuardians,
              color: colors.primary,
            ),
          ),
          verticalSpaceSmall,
          Visibility(
            visible: model.searchTC.text.isEmpty,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: model.listOfGuardians.length,
              itemBuilder: (context, index) =>
                  guardiansListTile(model.listOfGuardians[index]),
            ),
          ),
          Visibility(
            visible: model.searchTC.text.isNotEmpty,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: model.listOfResult.length,
              itemBuilder: (context, index) =>
                  resultGuardiansListTile(model.listOfResult[index]),
            ),
          ),
        ],
      ),
    );
  }
}

Widget guardiansListTile(AccountProfileModel model) {
  return ListTile(
    title: AppText.body(
      model.profilename,
      color: colors.black,
    ),
    subtitle: AppText.caption(model.username),
    leading: CustomCircularAvatar(
      radius: 24,
      imgPath: model.profileImgUrl,
    ),
  );
}

Widget resultGuardiansListTile(ResultGuardianProfileModel model) {
  return ListTile(
    title: AppText.body(
      model.profilename,
      color: colors.black,
    ),
    subtitle: AppText.caption(model.username),
    leading: CustomCircularAvatar(
      radius: 24,
      imgPath: model.profileImgUrl,
    ),
    trailing: GestureDetector(
      child: FollowBtn(
        initialState: model.isRequested,
        trueValue: "Requested",
        falseValue: "Request",
      ),
    ),
  );
}
