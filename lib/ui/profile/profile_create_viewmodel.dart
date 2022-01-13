import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/params/edit_animal_profile_main_details_body.dart';
import 'package:tamely/models/params/profile_create_body.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/base/authentication_viewmodel.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/utils.dart';

import 'profile_create_view.form.dart';

class ProfileCreateViewModel extends AuthenticationViewModel {
  final navigationService = locator<NavigationService>();
  final log = getLogger('ProfileCreateViewModel');
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final sharedPreferencesService = locator<SharedPreferencesService>();
  final ImagePicker _picker = ImagePicker();

  bool _isValid = false;
  LocalUser user;

  String _fullName = "";
  String _shortBio = "";

  String petID = "";
  String petToken = "";

  bool isEdit = false;
  bool isAnimal = false;

  ProfileCreateViewModel(this.user);

  get isValid => _isValid;

  String get imagePath => _imageFile?.path ?? "";
  String avatarUrl = "";

  void navigateBack() => navigationService.back();

  void onForgotPassword() {
    navigationService.navigateTo(Routes.forgotPasswordView);
  }

  dynamic _pickImageError;
  XFile? _imageFile;

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
        notifyListeners();
        avatarUrl = await runBusyFuture(
            GlobalMethods.imageToLink(File(_imageFile!.path)));
        notifyListeners();
      }
      log.d("ImagePath: $imagePath");
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

  // Future<void> uploadImage() async {
  //   SystemChannels.textInput.invokeMethod('TextInput.hide');
  //   if (_imageFile == null) {
  //     _snackBarService.showSnackbar(message: "Image is empty");
  //   }
  //   if (await Util.checkInternetConnectivity()) {
  //     BaseResponse<CommonResponse> response =
  //         await runBusyFuture(_tamelyApi.uploadImage(File(_imageFile!.path)));
  //     if (response.getException != null) {
  //       ServerError error = response.getException as ServerError;
  //       _snackBarService.showSnackbar(message: error.getErrorMessage());
  //     } else if (response.data != null) {
  //       avatarUrl = response.data!.avatar ?? "";
  //       checkValidateField();
  //     }
  //   } else {
  //     _snackBarService.showSnackbar(message: "No Internet connection");
  //   }
  // }

  Future<void> saveProfileData() async {
    if (!checkValidateField()) {
      _snackBarService.showSnackbar(message: "Please enter all field");
    }
    if (await Util.checkInternetConnectivity()) {
      if (isAnimal) {
        try {
          EditAnimalProfileMainDetailsBody body =
              EditAnimalProfileMainDetailsBody(
            petID,
            (usernameValue ?? "").trimLeft().trimRight(),
            nameValue ?? "",
            shortBioValue ?? "",
            avatarUrl,
          );
          var result = await runBusyFuture(
              _tamelyApi.editAnimalProfileMainDetails(body),
              throwException: true);
          if (result.data != null) {
            if (result.data!.success ?? false) {
              navigationService.back(result: 1);
            }
          }
        } catch (e) {
          log.e(e);
          _snackBarService.showSnackbar(message: "$e");
        }
      } else {
        ProfileCreateBody profileCreateBody = ProfileCreateBody(
            nameValue ?? "",
            (usernameValue ?? "").trimLeft().trimRight(),
            shortBioValue ?? "",
            "",
            avatarUrl);
        try {
          await runBusyFuture(updateProfile(profileCreateBody, isEdit: isEdit),
              throwException: true);
        } catch (e) {
          log.e(e);
          _snackBarService.showSnackbar(message: "$e");
        }
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  void onBack() {
    if (isEdit) {
      navigationService.back();
    } else {
      navigationService.pushNamedAndRemoveUntil(Routes.onBoardingView);
    }
  }

  @override
  void setFormStatus() {
    checkValidateField();
    String username = formValueMap["username"] ?? "";
    _userNameChanged(username);
  }

  Timer? _debounce;
  String _userName = "";
  bool _isValidUser = false;

  _userNameChanged(String query) async {
    if (_userName != query && query.isNotEmpty) {
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 500), () async {
        _userName = query;
        if (await Util.checkInternetConnectivity()) {
          try {
            BaseResponse<UserNameAvailableResponse> availableResponse =
                await runBusyFuture(_tamelyApi.checkUserName(true, query),
                    throwException: true);
            if (availableResponse.getException != null) {
              ServerError error = availableResponse.getException as ServerError;
              _snackBarService.showSnackbar(message: error.getErrorMessage());
            } else if (availableResponse.data != null) {
              _isValidUser = availableResponse.data!.isAvailable;
              checkValidateField();
            }
          } catch (e) {
            log.e(e);
            _snackBarService.showSnackbar(message: "$e");
          }
        } else {
          _snackBarService.showSnackbar(message: "No Internet connection");
        }
      });
    }
  }

  init(dynamic lastAvatarUrl, bool isEdit, bool isAnimal, String petID,
      String petToken) {
    // sharedPreferencesService.currentState =
    //     getRedirectStateName(RedirectState.ProfileCreate);
    this.isEdit = isEdit;
    this.isAnimal = isAnimal;
    this.petID = petID;
    this.petToken = petToken;
    if (isEdit) {
      avatarUrl = lastAvatarUrl;
    }
    notifyListeners();
  }

  bool checkValidateField() {
    _isValid = true;
    formValueMap.keys.forEach((element) {
      if (element == UsernameValueKey) {
        String elementValue = formValueMap[element];
        if (elementValue.isEmpty) {
          _isValid = false;
          return;
        }
      }
    });

    // if (avatarUrl.isEmpty) {
    //   _isValid = false;
    // }

    if (!_isValidUser) {
      _isValid = false;
    }

    notifyListeners();
    return _isValid;
  }

  String validUser(TextEditingController usernameController) {
    if (_isValidUser) {
      return "";
    } else {
      return "Username is not available";
    }
  }

  String get fullName => _fullName;

  String get shortBio => _shortBio;

  String get userName => _userName;
}
