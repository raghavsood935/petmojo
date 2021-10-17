import 'package:flutter/material.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddDetailsProfileViewModel extends BaseViewModel {
  final log = getLogger('AddDetialsProfileView');
  final _navigationService = locator<NavigationService>();

  String _blobImgPath = "assets/images/Blob.png";

  String get bolbImgPath => _blobImgPath;

  void goBack() async {
    _navigationService.back();
  }

  bool checkIfTheKeyboardIsOpen(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0.0) {
      log.d("Keyborad is opened");
      return true;
    } else {
      log.d("Keyborad is closed");
      return false;
    }
  }
}
