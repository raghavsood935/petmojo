import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class BasicListOfOptionsBottomSheet extends StatelessWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const BasicListOfOptionsBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: sheetRequest.customData.length,
        itemBuilder: (context, index) => ListTile(
            title: AppText.title(sheetRequest.customData[index].profileName),
            leading: CustomCircularAvatar(
              radius: 20,
              isHuman: sheetRequest.customData[index].isHuman,
              imgPath: sheetRequest.customData[index].avatar,
            ),
            onTap: () => onDialogTap(
              SheetResponse(confirmed: true, data: index),
            ),
            trailing: CircleAvatar(
              backgroundColor: colors.black,
              radius: 12,
              child: CircleAvatar(
                backgroundColor: colors.white,
                radius: 11,
                child: CircleAvatar(
                  backgroundColor: (index == sheetRequest.data)
                      ? colors.primary
                      : colors.white,
                  radius: 4,
                ),
              ),
            )),
        separatorBuilder: (context, index) => spacedDividerTiny,
      ),
    );
  }
}
