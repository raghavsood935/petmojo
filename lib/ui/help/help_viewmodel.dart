import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/need_help_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';

import 'package:tamely/enum/DialogType.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tamely/util/utils.dart';

class HelpViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _content = TextEditingController();
  final String hintText =
      "Type your issue here. We will reach out to you shortly!";
  bool isPhone = true;
  bool isEmail = false;

  XFile? _imageFile;
  String avatarUrl = "";
  dynamic _pickImageError;

  final ImagePicker _picker = ImagePicker();

  TextEditingController get phone => _phone;

  TextEditingController get email => _email;

  TextEditingController get content => _content;

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
        await uploadImage();
      }

      notifyListeners();
    } catch (e) {
      _pickImageError = e;
    }
  }

  Future<void> uploadImage() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (_imageFile == null) {
      _snackBarService.showSnackbar(message: "Image is empty");
    }
    if (await Util.checkInternetConnectivity()) {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<CommonResponse> response =
          await runBusyFuture(_tamelyApi.uploadImage(File(_imageFile!.path)));
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        avatarUrl = response.data!.avatar ?? "";
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  onEmailChange() {
    if (!isEmail) {
      isEmail = !isEmail;
      isPhone = !isPhone;
    }
    notifyListeners();
  }

  onPhoneChange() {
    if (!isPhone) {
      isEmail = !isEmail;
      isPhone = !isPhone;
    }
    notifyListeners();
  }

  Future onSubmit() async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
    String contactDetails;
    if (isPhone) {
      contactDetails = _phone.text;
    } else {
      contactDetails = _email.text;
    }
    NeedHelpBody body = NeedHelpBody(contactDetails, _content.text, avatarUrl);

    var result = await _tamelyApi.getHelp(body).whenComplete(
        () => _dialogService.completeDialog(DialogResponse(confirmed: true)));
    if (result.data != null) {
      if (result.data!.message != null) {
        _navigationService.back();
        _navigationService.back();
        _snackBarService.showSnackbar(message: result.data!.message!);
      }
    }
  }

  runBusyFuture(Future<BaseResponse<CommonResponse>> uploadImage) {}
}
