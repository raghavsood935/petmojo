import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/realted_animals_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/animal_type_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';

class RelationsTile extends StatefulWidget {
  RelationsTile({
    Key? key,
    required this.profileModel,
    required this.viewModel,
  }) : super(key: key);

  ProfileForYouResponse profileModel;
  RelatedAnimalsViewModel viewModel;

  @override
  _RelationsTileState createState() => _RelationsTileState();
}

class _RelationsTileState extends State<RelationsTile> {
  bool isOpened = false;
  bool isRequested = false;

  String relation = "Friend";
  bool requested = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonPaddding,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CustomCircularAvatar(
              radius: 24,
              imgPath: widget.profileModel.avatar ?? "",
              isHuman: false,
            ),
            title: AppText.body(
              widget.profileModel.name ?? widget.profileModel.fullName ?? "-",
              color: colors.black,
            ),
            subtitle: AppText.caption(widget.profileModel.username ?? "-"),
            trailing: isRequested
                ? FollowBtn(
                    initialState: true,
                    trueValue: "Requested",
                    falseValue: "Request",
                    isStatic: true,
                  )
                : Visibility(
                    visible: !isOpened,
                    child: IconButton(
                      onPressed: () => setState(() {
                        isOpened = true;
                        print(isOpened);
                      }),
                      icon: Icon(Icons.arrow_drop_down_sharp),
                    ),
                  ),
          ),
          Visibility(
            visible: isOpened,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 3,
                  child: DropdownButton<String>(
                    isExpanded: true,
                    itemHeight: null,
                    icon: Icon(Icons.arrow_drop_down),
                    value: relation,
                    items: animalRelations
                        .map((item) => DropdownMenuItem<String>(
                              child: AppText.body1(item, color: colors.black),
                              value: item,
                            ))
                        .toList(),
                    onChanged: (String? value) => setState(() {
                      relation = value ?? "-";
                    }),
                  ),
                ),
                horizontalSpaceSmall,
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                      child: FollowBtn(
                        initialState: requested,
                        falseValue: "Request",
                        trueValue: "Requested",
                        isStatic: true,
                      ),
                      onTap: () {
                        widget.viewModel.sendRelationRequest(
                            widget.profileModel.Id ?? "", relation);
                        setState(() {
                          isRequested = true;
                          isOpened = false;
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
