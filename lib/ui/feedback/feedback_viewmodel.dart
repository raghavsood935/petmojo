import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/feedback_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/utils.dart';

class FeedBackViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  final TextEditingController _feedback = TextEditingController();
  final String hintText =
      "Type your feedback here. Any and every feedback of yours is important to us!";

  List<String> _tags = [];

  bool bug = false;
  bool feature = false;
  bool design = false;
  bool idea = false;
  bool others = false;

  XFile? _imageFile;
  String avatarUrl = "";
  dynamic _pickImageError;

  final ImagePicker _picker = ImagePicker();

  int _rate = 0;

  TextEditingController get feedback => _feedback;

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

  onBugChange() {
    bug = !bug;
    onTagsChanges(bugTag);
    notifyListeners();
  }

  onFeaturesChange() {
    feature = !feature;
    onTagsChanges(featuresTag);
    notifyListeners();
  }

  onDesignChange() {
    design = !design;
    onTagsChanges(designTag);
    notifyListeners();
  }

  onIdeaChange() {
    idea = !idea;
    onTagsChanges(ideaTag);
    notifyListeners();
  }

  onOthersChange() {
    others = !others;
    onTagsChanges(othersTag);
    notifyListeners();
  }

  onTagsChanges(String tag) {
    if (_tags.contains(tag)) {
      _tags.remove(tag);
    } else {
      _tags.add(tag);
    }
    notifyListeners();
  }

  onRateChange(int i) {
    _rate = i;
    notifyListeners();
  }

  Future onSubmit() async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
    SubmitFeedbackBody body =
        SubmitFeedbackBody(_rate, _tags, avatarUrl, _feedback.text);

    var result = await _tamelyApi.sendFeedback(body).whenComplete(
        () => _dialogService.completeDialog(DialogResponse(confirmed: true)));
    if (result.data != null) {
      if (result.data!.message != null) {
        print(result.data!.message!);
        _snackBarService.showSnackbar(message: result.data!.message!);
      }
    }
  }

  runBusyFuture(Future<BaseResponse<CommonResponse>> uploadImage) {}
}
