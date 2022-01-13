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
import 'package:tamely/models/params/groups/edit_group_details_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/global_methods.dart';

class EditGroupBasicInfoViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();

  TextEditingController groupNameTC = TextEditingController();
  TextEditingController descriptioinTC = TextEditingController();
  TextEditingController hashtagTC = TextEditingController();

  List<String> listOfHashtags = [];

  String groupId = "";

  bool isLoading = false;

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;
  XFile? _imageFile;
  File? _editedImage;

  String _avatarUrl = "";

  String get avatarUrl => _avatarUrl;

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
        cropImageMethod(File(_imageFile!.path));
        notifyListeners();
      }
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

//
  void cropImageMethod(
    File imageFile,
  ) async {
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
    );
    notifyListeners();

    _avatarUrl = await GlobalMethods.imageToLink(_editedImage!);
    notifyListeners();
  }

  Future init(
    String grpId,
    String avatar,
    String name,
    String description,
    List<String> hashTag,
  ) async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;

    groupId = grpId;
    groupNameTC.text = name;
    descriptioinTC.text = description;
    _avatarUrl = avatar;
    listOfHashtags = hashTag;

    notifyListeners();
  }

  Future addHashTag() async {
    if (listOfHashtags.contains(hashtagTC.text)) {
      _snackBarService.showSnackbar(message: "This tag is already added");
    } else {
      listOfHashtags.add(hashtagTC.text);
      hashtagTC.clear();
      notifyListeners();
    }
  }

  Future deleteHashTag(String value) async {
    listOfHashtags.remove(value);
    notifyListeners();
  }

  Future onSave() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    isLoading = true;
    notifyListeners();
    var response = await _tamelyApi.editGroupDetails(
        EditGroupDetailsBody(
          groupId,
          groupNameTC.text,
          _avatarUrl,
          descriptioinTC.text,
          listOfHashtags,
        ),
        isHuman,
        petToken: petToken);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      isLoading = false;
      notifyListeners();
      if (error.getErrorMessage() == " Received invalid status code: 403") {
        _snackBarService.showSnackbar(
            message: "You don't have required permissions");
      } else {
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (response.data != null) {
      if (response.data!.success ?? false) {
        navigationService.back();
        navigationService.back();
        navigationService.replaceWith(Routes.groupInfoView,
            arguments: GroupInfoViewArguments(groupId: groupId));
      } else {
        _snackBarService.showSnackbar(message: response.data!.message ?? "");
      }
      isLoading = false;
      notifyListeners();
    }
  }
}
