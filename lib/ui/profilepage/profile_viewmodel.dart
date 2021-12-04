import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/list_of_post_response.dart';
import 'package:tamely/models/params/get_profile_details_by_id_body.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/post_response.dart';
import 'package:tamely/models/profile_details_by_id_response.dart';
import 'package:tamely/models/user_details_model.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/utils.dart';

class ProfileViewModel extends BaseViewModel {
  final ImagePicker _picker = ImagePicker();

  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _tamelyApi = locator<TamelyApi>();

  String avatarUrl = "";
  dynamic _pickImageError;
  XFile? _imageFile;
  File? _editedImage;

  String get imagePath => _imageFile?.path ?? "";

  String? _animalProfileCreateView = Routes.createAnimalPageView;
  dynamic _destinationArguments;

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
  void cropImageMethod(File imageFile) async {
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
    await uploadImage();
  }

  Future<void> uploadImage() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (_editedImage == null) {
      _snackBarService.showSnackbar(message: "Image is empty");
    }
    if (await Util.checkInternetConnectivity()) {
      BaseResponse<CommonResponse> response =
          await runBusyFuture(_tamelyApi.uploadImage(File(_editedImage!.path)));
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        avatarUrl = response.data!.avatar ?? "";
        _profileImgUrl = response.data!.avatar ?? "";
        notifyListeners();
      }
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  Future _createAnimalProfileView() async {
    if (_animalProfileCreateView != null) {
      var result = await _navigationService.navigateTo(
        _animalProfileCreateView!,
        arguments: _destinationArguments,
      );

      if (result == 1) {
        getUserProfileDetails();
      }
    }
  }

  Future _addDetailsPage() async {
    int result = await _navigationService.navigateTo(
      Routes.addDetailsProfileView,
      arguments: AddDetailsProfileViewArguments(
          lastUrl: _profileImgUrl, lastBio: _shortBio),
    );

    if (result == 1) {
      getUserProfileDetails();
    }
  }

  Future init(bool isInspect, String inspectProfileId) async {
    if (isInspect) {
      getUserProfileDetailsById(inspectProfileId);
      getUserPosts();
    } else {
      getUserProfileDetails();
      getUserPosts();
    }
  }

  Future getUserProfileDetailsById(String id) async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      GetProfileDetailsByIdBody body = GetProfileDetailsByIdBody("Human", id);
      BaseResponse<ProfileDetailsByIdResponse> response =
          await _tamelyApi.getProfileDetailsById(body);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _dialogService.completeDialog(DialogResponse(confirmed: true));
        _navigationService.back();
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        setProfileDetailsByIValues(response.data!).then((value) =>
            _dialogService.completeDialog(DialogResponse(confirmed: true)));
      } else {
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      }
    });
  }

  Future getUserProfileDetails() async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _dialogService.completeDialog(DialogResponse(confirmed: true));
        _navigationService.back();
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        setValues(response.data!).then((value) =>
            _dialogService.completeDialog(DialogResponse(confirmed: true)));
      } else {
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      }
    });
  }

  Future getUserPosts() async {
    BaseResponse<ListOfPostResponse> response = await _tamelyApi.getUserPosts();
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      log.d(response.data!.toString());
      _listOfPosts.addAll(response.data!.listOfPosts ?? []);
      notifyListeners();
    }
  }

  String _Id = "";
  String _profilename = "";
  String _username = "";
  String _profileImgUrl = "";
  String _shortBio = "";
  String _actionText = "Complete your profile";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool isMyAnimalsVisibile = false;
  bool _profileCompleted = false;

  bool isFollowing = false;

  List<PetBasicDetailsResponse> _listOfMyAnimals = [];
  List<PostResponse> _listOfPosts = [];

  List<PetBasicDetailsResponse> get listOfMyAnimals => _listOfMyAnimals;

  List<PostResponse> get listOfPosts => _listOfPosts;

  String get profilename => _profilename;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  String get shortBio => _shortBio;

  String get actionText => _actionText;

  int get noOfPosts => _noOfPosts;

  int get noOfFollowers => _noOfFollowers;

  int get noOfFollowing => _noOfFollowing;

  int get noOfHearts => _noOfHearts;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get profileCompleted => _profileCompleted;

  void myAnimalVisible() {
    isMyAnimalsVisibile = !isMyAnimalsVisibile;
    notifyListeners();
  }

  void goToAddDetailsProfileAction() async {
    await _addDetailsPage();
  }

  void goToFollowPeopleProfileAction() async {
    var result = await _navigationService.navigateTo(
        Routes.followPeopleProfileActionView,
        arguments: FollowPeopleProfileActionViewArguments(
            id: _Id, isShowOurFollowersPage: false));

    if (result != null) {
      if (result == 1) {
        getUserProfileDetails();
      }
    }
  }

  void goToCreateAnimalProfileView() async {
    await _createAnimalProfileView();
  }

  void goToAnimalProfileView(String petId) async {
    await _navigationService.navigateTo(Routes.animalProfileView,
        arguments: AnimalProfileViewArguments(petId: petId));
  }

  void goToPostDetailsView(PostResponse postResponse) async {
    // await _navigationService.navigateTo(Routes.postDetialsPageView,
    //     arguments: PostDetialsPageViewArguments(postResponse: postResponse));
  }

  void goToCompleteProfile() async {
    if (_shortBio.isEmpty) {
      goToAddDetailsProfileAction();
    } else if (_noOfFollowing == 0) {
      goToFollowPeopleProfileAction();
    }
  }

  void goBack() {
    _navigationService.back();
  }

  Future followThisProfile(String fromID, String toID) async {
    isFollowing = !isFollowing;
    notifyListeners();
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(fromID, "Human"),
      ToRequestBody(
        toID,
        "Human",
      ),
    );
    var result = await _tamelyApi.sendFollowRequest(body);
    if (result.data != null) {
      _noOfFollowers++;
      notifyListeners();
    }
  }

  void goToProfileEditView() async {
    var result = await _navigationService.navigateTo(
      Routes.profileCreateView,
      arguments: ProfileCreateViewArguments(
        user: LocalUser(
            username: _profilename, fullName: _username, bio: _shortBio),
        isEdit: true,
        lastAvatarUrl: _profileImgUrl,
      ),
    );
    if (result == 1) {
      getUserProfileDetails();
    }
  }

  Future setValues(UserProfileDetailsResponse response) async {
    _completedProfileStepCount = 0;
    _listOfMyAnimals.clear();

    UserDetailsModelResponse userDetailsModelResponse =
        response.userDetailsModel!;
    _Id = userDetailsModelResponse.Id ?? "";
    _profilename = userDetailsModelResponse.fullName ?? "";
    _username = userDetailsModelResponse.username ?? "";
    _profileImgUrl = userDetailsModelResponse.avatar ?? "";
    _shortBio = userDetailsModelResponse.bio ?? "";
    _noOfFollowers = response.totalFollowers!;
    _noOfFollowing = response.totalFollowings!;
    _noOfPosts = response.totalPosts ?? 0;
    _noOfHearts = response.totalLikes ?? 0;

    for (PetBasicDetailsResponse model
        in userDetailsModelResponse.listOfPets ?? []) {
      _listOfMyAnimals.addIf(model.confirmed, model);
    }

    if (_shortBio.isNotEmpty) {
      _completedProfileStepCount++;
    }

    if (response.totalFollowings! > 0) {
      _completedProfileStepCount++;
    }

    notifyListeners();
    _dialogService.completeDialog(DialogResponse(confirmed: true));
  }

  Future setProfileDetailsByIValues(ProfileDetailsByIdResponse response) async {
    UserDetailsModelResponse userDetailsModelResponse = response.user!;
    _profilename = userDetailsModelResponse.username ?? "";
    _username = userDetailsModelResponse.fullName ?? "";
    _profileImgUrl = userDetailsModelResponse.avatar ?? "";
    _shortBio = userDetailsModelResponse.bio ?? "";
    _noOfFollowers = response.totalFollowers!;
    _noOfFollowing = response.totalFollowings!;
    _noOfPosts = response.totalPosts ?? 0;
    _noOfHearts = response.totalLikes ?? 0;

    for (PetBasicDetailsResponse model
        in userDetailsModelResponse.listOfPets ?? []) {
      _listOfMyAnimals.addIf(model.confirmed, model);
    }

    if (_shortBio.isNotEmpty) {
      _completedProfileStepCount++;
    }

    if (response.totalFollowings! > 0) {
      _completedProfileStepCount++;
    }

    notifyListeners();
  }
}
