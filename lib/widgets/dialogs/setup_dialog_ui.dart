import 'package:flutter/material.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/shared/DialogType.dart';
import 'package:stacked_services/stacked_services.dart';

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
  };
  dialogService.registerCustomDialogBuilders(builders);
}
