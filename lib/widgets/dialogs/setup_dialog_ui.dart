import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/widgets/dialogs/exit_app_dialog_ui.dart';
import 'package:tamely/widgets/dialogs/image_pop_dailog_view.dart';
import 'package:tamely/widgets/dialogs/success_dialog.dart';
import 'package:tamely/widgets/fullscreen_loading_indicator.dart';

import 'basic_dialog.dart';
import 'location_dialog.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();
  var builders = {
    DialogType.BasicDialog: (context, dialogRequest, completer) => Dialog(
          child: BasicDialog(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
    DialogType.LoadingDialog: (context, dialogRequest, completer) => Dialog(
          child: FullScreenLoadingDialog(),
        ),
    DialogType.LocationDialog: (context, dialogRequest, completer) => Dialog(
          child: LocationDialog(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
    DialogType.ExitAppDialog: (context, dialogRequest, completer) => Dialog(
          child: ExitAppDialogUi(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
    DialogType.SuccessDialog: (context, dialogRequest, completer) => Dialog(
          child: SuccessDialog(
            dialogRequest: dialogRequest,
            onDialogTap: completer,
          ),
        ),
  };
  dialogService.registerCustomDialogBuilders(builders);
}
