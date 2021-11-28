import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/add_details_bottom_sheet_view_model.dart';
import 'package:tamely/widgets/main_btn.dart';

class AddDetailsBottomSheet extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const AddDetailsBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _AddDetailsBottomSheetState createState() => _AddDetailsBottomSheetState();
}

class _AddDetailsBottomSheetState extends State<AddDetailsBottomSheet> {
  TextEditingController tc = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.sheetRequest.customData != null) {
      tc.text = widget.sheetRequest.customData.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("INSIDE THE WIDGET");
    return ViewModelBuilder<AddDetailsBottomSheetViewModel>.reactive(
      viewModelBuilder: () => AddDetailsBottomSheetViewModel(),
      builder: (context, model, child) => Container(
        decoration: topRoundedDecoration,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AppText.body2(widget.sheetRequest.title!),
            verticalSpaceTiny,
            AppInputField(controller: tc),
            verticalSpaceRegular,
            GestureDetector(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: colors.primary,
                ),
                child: model.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: colors.white,
                        ),
                      )
                    : AppText.subheading(
                        "Save",
                        textAlign: TextAlign.center,
                        color: Colors.white,
                      ),
              ),
              onTap: () => model.onSave(widget, tc.text),
            ),
          ],
        ),
      ),
    );
  }
}
