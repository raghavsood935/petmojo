import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/shared/BottomSheetType.dart';
import 'package:stacked_services/stacked_services.dart';

import 'basic_bottom_sheet.dart';

void setupBottomSheetUi() {
  var bottomSheetService = locator<BottomSheetService>();
  var builders = {
    BottomSheetType.BasicBottomSheet: (context, sheetRequest, completer) =>
        BasicBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        )
  };
  bottomSheetService.setCustomSheetBuilders(builders);
}
