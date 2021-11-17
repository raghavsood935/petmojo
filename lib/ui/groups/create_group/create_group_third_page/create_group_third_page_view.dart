import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_third_page/create_group_third_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/search_text_field.dart';

class CreateGroupThirdView extends StatefulWidget {
  const CreateGroupThirdView({Key? key}) : super(key: key);

  @override
  _CreateGroupThirdViewState createState() => _CreateGroupThirdViewState();
}

class _CreateGroupThirdViewState extends State<CreateGroupThirdView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupThirdViewModel>.reactive(
      viewModelBuilder: () => CreateGroupThirdViewModel(),
      onModelReady: (model) => model.dummyStart(),
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.only(
          bottom: 100,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextField(
                controller: model.seachTC,
                hint: "Search for people",
                onChange: model.onSearchChange,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: model.result.length,
                itemBuilder: (context, index) =>
                    resultProfileListTile(model.result[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget resultProfileListTile(ResultModel model) {
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
    trailing: FollowBtn(
      initialState: model.isInvited,
      trueValue: "Invited",
      falseValue: "Invite",
    ),
  );
}
