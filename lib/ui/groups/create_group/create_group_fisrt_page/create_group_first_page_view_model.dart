import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/groups/create_group_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/global_methods.dart';

class CreateGroupFirstViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  bool isLoading = false;
  bool isValid = false;

  String groupId = "";

  TextEditingController groupNameTC = TextEditingController();

  List<String> _groupPrivacyValues = [select, "Public", "Private"];

  String _groupPrivacy = select;

  List<String> get groupPrivacyValues => _groupPrivacyValues;

  String get groupPrivacy => _groupPrivacy;

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    notifyListeners();
  }

  void onGroupPrivacyChange(String? value) {
    _groupPrivacy = value!;
    notifyListeners();
  }

  Future onGroupNameChanged(String value) async {
    if (value.isEmpty) {
      isValid = false;
      notifyListeners();
    } else {
      isValid = true;
      notifyListeners();
    }
    print("${value} ::: $isValid");
  }

  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;
  XFile? _imageFile;
  File? _editedImage;

  String _avatarUrl = "";
  String _coverUrl = "";

  String get avatarUrl => _avatarUrl;
  String get coverUrl => _coverUrl;

  void onImageButtonPressed(
      ImageSource source, BuildContext? context, int type) async {
    // 0 for profile image
    // 1 for cover image
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        // maxWidth: 500,
        // maxHeight: 500,
        // imageQuality: 100,
      );

      if (pickedFile != null) {
        _imageFile = pickedFile;
        cropImageMethod(File(_imageFile!.path), type);
        notifyListeners();
      }
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

//
  void cropImageMethod(File imageFile, int type) async {
    _editedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      androidUiSettings: AndroidUiSettings(
        activeControlsWidgetColor: colors.primary,
        toolbarColor: colors.white,
        toolbarTitle: 'Edit Image',
        toolbarWidgetColor: colors.primary,
        lockAspectRatio: false,
      ),
      iosUiSettings: IOSUiSettings(
        aspectRatioLockEnabled: false,
      ),
      compressQuality: 100,
    );
    notifyListeners();
    if (type == 0) {
      _avatarUrl = await GlobalMethods.imageToLink(_editedImage!);
      notifyListeners();
    } else if (type == 1) {
      _coverUrl = await GlobalMethods.imageToLink(_editedImage!);
      notifyListeners();
    }
  }

  Future createGroup() async {
    if (isValid) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      isLoading = true;
      notifyListeners();
      var response = await _tamelyApi.createGroup(
        CreateGroupBody(_avatarUrl, groupNameTC.text, _coverUrl),
        isHuman,
        animalToken: petToken,
      );
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        isLoading = false;
        notifyListeners();
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        if (response.data!.success ?? false) {
          groupId = response.data!.groupId ?? "";
          notifyListeners();
          navigationService.replaceWith(Routes.createGroupSecondView,
              arguments: CreateGroupSecondViewArguments(
                  groupId: groupId,
                  isFromEditView: false,
                  description: "",
                  hashtag: []));
        } else {
          _snackBarService.showSnackbar(message: response.data!.message ?? "");
        }
        isLoading = false;
        notifyListeners();
      }
    }
  }
}
