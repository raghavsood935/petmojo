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
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: widget.onDialogTap(
                  SheetResponse(
                    confirmed: true,
                    data: tc.text,
                  ),
                ),
                child: model.isLoading
                    ? CircularProgressIndicator(
                        color: colors.white,
                      )
                    : AppText.subheading("Save", color: Colors.white),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colors.primary),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            MainButtonWidget(
              onMainButtonTapped: () => model.onSave(widget, tc.text),
              mainButtonTitle: widget.sheetRequest.mainButtonTitle!,
            ),
          ],
        ),
      ),
    );
  }
}
