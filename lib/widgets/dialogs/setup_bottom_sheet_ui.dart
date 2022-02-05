import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/widgets/dialogs/add_details_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/basic_list_of_options_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/comments_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/delete_post_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/more_option_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/select_animal_breed_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/select_animal_type_bottom_sheet.dart';
import 'package:tamely/widgets/dialogs/select_other_animal_type_bottom_sheet.dart';

import 'basic_bottom_sheet.dart';
import 'cancel_subscription_bottom_sheet.dart';

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
        ),
    BottomSheetType.SelectAnimalTypeBottomSheet:
        (context, sheetRequest, completer) => SelectAnimalTypeBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.SelectOtherAnimalTypeBottomSheet:
        (context, sheetRequest, completer) => SelectOtherAnimalTypeBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.SelectBreedBottomSheet:
        (context, sheetRequest, completer) => SelectAnimalBreedBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.CancelSubscriptionBottomSheet:
        (context, sheetRequest, completer) => CancelSubscriptionBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.DeletePostBottomSheet: (context, sheetRequest, completer) =>
        DeletePostBottomSheet(
          sheetRequest: sheetRequest,
          onDialogTap: completer,
        ),
    BottomSheetType.BasicListOfOptionsBottomSheet:
        (context, sheetRequest, completer) => BasicListOfOptionsBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.ProductFilterBottomSheet:
        (context, sheetRequest, completer) => ProductFilterBottomSheetView(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
    BottomSheetType.ProductItemCountBottomSheet:
        (context, sheetRequest, completer) => ProductItemCountBottomSheet(
              sheetRequest: sheetRequest,
              onDialogTap: completer,
            ),
  };
  bottomSheetService.setCustomSheetBuilders(builders);
}
