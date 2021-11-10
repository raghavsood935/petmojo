import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
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
    return Container(
      decoration: topRoundedDecoration,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          AppText.body2(widget.sheetRequest.title!),
          verticalSpaceTiny,
          AppInputField(controller: tc),
          verticalSpaceRegular,
          MainButtonWidget(
            onMainButtonTapped: () => widget.onDialogTap(
              SheetResponse(
                confirmed: true,
                data: tc.text,
              ),
            ),
            mainButtonTitle: widget.sheetRequest.mainButtonTitle!,
          ),
        ],
      ),
    );
  }
}
