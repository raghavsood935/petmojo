import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddDetailsProfileViewModel extends BaseViewModel {
  final ImagePicker _picker = ImagePicker();

  final _snackBarService = locator<SnackbarService>();

  final log = getLogger('AddDetialsProfileView');
  final _navigationService = locator<NavigationService>();

  String _blobImgPath = "assets/images/Blob.png";

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
        imageQuality: 70,
      );

      if (pickedFile != null) {
        _imageFile = pickedFile;
        // await uploadImage();
      }
      log.d("ImagePath: $imagePath");
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

  void goBack() async {
    _navigationService.back();
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
}
