import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/change_bio_avatar_body.dart';
import 'package:tamely/util/utils.dart';

class AddDetailsProfileViewModel extends BaseViewModel {
  final ImagePicker _picker = ImagePicker();

  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  final log = getLogger('AddDetialsProfileView');
  final _navigationService = locator<NavigationService>();

  String _blobImgPath = "assets/images/Blob.png";

  TextEditingController bioTC = new TextEditingController();
  String avatarUrl = "";

  String get bolbImgPath => _blobImgPath;

  dynamic _pickImageError;
  XFile? _imageFile;

  String get imagePath => _imageFile?.path ?? "";

  void onImageButtonPressed(ImageSource source, BuildContext? context) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 100,
      );

      if (pickedFile != null) {
        _imageFile = pickedFile;
        await uploadImage();
      }
      log.d("ImagePath: $imagePath");
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

  Future<void> uploadImage() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (_imageFile == null) {
      _snackBarService.showSnackbar(message: "Image is empty");
    }
    if (await Util.checkInternetConnectivity()) {
      BaseResponse<CommonResponse> response =
          await runBusyFuture(_tamelyApi.uploadImage(File(_imageFile!.path)));
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        avatarUrl = response.data!.avatar ?? "";
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  void goBack() async {
    _navigationService.back(result: 0);
  }

  Future changeDetails() async {
    ChangeBioAvatarBody changeBioAvatarBody =
        ChangeBioAvatarBody(bioTC.text, avatarUrl);

    if (await Util.checkInternetConnectivity()) {
      BaseResponse<CommonResponse> response =
          await _tamelyApi.changeBioAndAvatar(changeBioAvatarBody);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        _navigationService.back(result: 1);
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  bool checkIfTheKeyboardIsOpen(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom > 0.0) {
      log.d("Keyboard is opened");
      return true;
    } else {
      log.d("Keyboard is closed");
      return false;
    }
  }

  void setPreviousValues(String url, String bio) {
    bioTC.text = bio;
    avatarUrl = url;
    notifyListeners();
  }
}
