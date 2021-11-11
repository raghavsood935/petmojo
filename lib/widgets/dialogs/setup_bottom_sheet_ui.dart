import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/widgets/dialogs/add_details_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/comments_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/more_option_bottom_sheet.dart';

import 'basic_bottom_sheet.dart';

void setupBottomSheetUi() {
  var bottomSheetService = locator<BottomSheetService>();
  var builders = {
    BottomSheetType.BasicBottomSheet: (context, sheetRequest, completer) =>
        BasicBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        ),
    BottomSheetType.CommentsBottomSheet: (context, sheetRequest, completer) =>
        CommentsBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        ),
    BottomSheetType.MoreOptionBottomSheet: (context, sheetRequest, completer) =>
        MoreOptionBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        ),
    BottomSheetType.AddDetailsBottomSheet: (context, sheetRequest, completer) =>
        AddDetailsBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        )
  };
  bottomSheetService.setCustomSheetBuilders(builders);
}
