import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

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
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: sheetRequest.customData.length,
        itemBuilder: (context, index) => ListTile(
          title: AppText.title(sheetRequest.customData[index]),
          onTap: () => onDialogTap(
            SheetResponse(confirmed: true, data: index),
          ),
        ),
      ),
    );
  }
}
