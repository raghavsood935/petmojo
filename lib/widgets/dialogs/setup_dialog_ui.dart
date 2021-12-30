import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/widgets/fullscreen_loading_indicator.dart';

import 'basic_dialog.dart';

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
  };
  dialogService.registerCustomDialogBuilders(builders);
}
