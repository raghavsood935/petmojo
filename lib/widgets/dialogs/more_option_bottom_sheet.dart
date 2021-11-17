import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';

import '../app_text.dart';

class MoreOptionBottomSheet extends StatelessWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const MoreOptionBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: colors.white,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: AppText.body2("Share post to"),
          ),
          ListTile(
            title: AppText.body2("Hide this post"),
          ),
          ListTile(
            title: AppText.body2("Unfollow"),
          ),
          ListTile(
            title: AppText.body2("Report abuse"),
          ),
        ],
      ),
    );
  }
}
