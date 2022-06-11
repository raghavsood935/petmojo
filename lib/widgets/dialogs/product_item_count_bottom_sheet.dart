import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/main_btn.dart';

import '../app_text.dart';

class ProductItemCountBottomSheet extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const ProductItemCountBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _ProductItemCountBottomSheetState createState() =>
      _ProductItemCountBottomSheetState();
}

class _ProductItemCountBottomSheetState
    extends State<ProductItemCountBottomSheet> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                widget.onDialogTap(
                  SheetResponse(confirmed: false),
                );
              },
              icon: Icon(
                Icons.close,
                color: colors.black,
              ),
            ),
          ),
          verticalSpaceRegular,
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  if (count > 1) {
                    setState(() {
                      count--;
                    });
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFC7CAD9),
                      width: 1,
                    ),
                  ),
                  child: AppText.bodyBold("-"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Color(0xFFC7CAD9),
                      width: 1,
                    ),
                  ),
                ),
                child: AppText.bodyBold("$count"),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFC7CAD9),
                      width: 1,
                    ),
                  ),
                  child: AppText.bodyBold("+"),
                ),
              ),
              Spacer(),
            ],
          ),
          verticalSpaceRegular,
          GestureDetector(
            onTap: () {
              widget.onDialogTap(SheetResponse(confirmed: true, data: count));
            },
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: colors.eCommercePrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              margin: commonPadding,
              child: Center(
                child: AppText.body1Bold(
                  "Checkout",
                  color: colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
