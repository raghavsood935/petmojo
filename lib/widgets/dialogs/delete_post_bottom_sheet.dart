import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class DeletePostBottomSheet extends StatelessWidget {
  const DeletePostBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpaceLarge,
          AppText.subheading(
            sheetRequest.title ?? "",
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () =>
                    onDialogTap(SheetResponse(confirmed: true, data: 0)),
                child: Container(
                  width: 140,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: colors.primary,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    sheetRequest.secondaryButtonTitle ?? "CANCEL",
                    style: TextStyle(
                        color: colors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    onDialogTap(SheetResponse(confirmed: true, data: 1)),
                child: Container(
                  width: 140,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    sheetRequest.mainButtonTitle ?? "DELETE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          verticalSpaceRegular,
        ],
      ),
    );
  }
}
