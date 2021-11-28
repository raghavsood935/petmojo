import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/animal_type_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';

class RelationsTile extends StatefulWidget {
  RelationsTile({Key? key, required this.profileModel}) : super(key: key);

  AccountProfileModel profileModel;

  @override
  _RelationsTileState createState() => _RelationsTileState();
}

class _RelationsTileState extends State<RelationsTile> {
  bool isOpened = false;
  bool isRequested = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCircularAvatar(
            radius: 24,
            imgPath: widget.profileModel.profileImgUrl,
          ),
          title: AppText.body(
            widget.profileModel.profilename,
            color: colors.black,
          ),
          subtitle: AppText.caption(widget.profileModel.username),
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
                  value: widget.profileModel.relation,
                  items: animalRelations
                      .map((item) => DropdownMenuItem<String>(
                            child: AppText.body1(item, color: colors.black),
                            value: item,
                          ))
                      .toList(),
                  onChanged: (String? value) => setState(() {
                    widget.profileModel.setRelation(value);
                  }),
                ),
              ),
              horizontalSpaceSmall,
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: FollowBtn(
                    initialState: widget.profileModel.requested,
                    falseValue: "Request",
                    trueValue: "Requested",
                    isStatic: true,
                  ),
                  onTap: () => setState(() {
                    isRequested = true;
                    isOpened = false;
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
