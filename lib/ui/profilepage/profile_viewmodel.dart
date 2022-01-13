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
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/params/get_post_by_id.dart';
import 'package:tamely/models/params/get_profile_details_by_id_body.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/profile_details_by_id_response.dart';
import 'package:tamely/models/user_details_model.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/profilepage/animal_profile/animal_profile_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/utils.dart';

class ProfileViewModel extends BaseViewModel {
  final ImagePicker _picker = ImagePicker();

  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _tamelyApi = locator<TamelyApi>();

  int _counter = 0;
  bool _isLoading = true;
  bool _isEndOfList = false;

  String avatarUrl = "";
  bool isHuman = true;
  String petID = "";
  String petToken = "";

  String inspectID = "";

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
        arguments: CreateAnimalPageViewArguments(isEdit: false),
      );

      if (result == 1) {
        getUserProfileDetails(true);
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
      getUserProfileDetails(true);
    }
  }

  Future init(bool isInspect, String inspectProfileId,
      {bool needToShowLoading = true, bool isFollowing = false}) async {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petToken = profile.petToken;
    petID = profile.petId;
    this.isFollowing = isFollowing;
    inspectID = inspectProfileId;
    notifyListeners();

    if (isInspect) {
      getUserProfileDetailsById(inspectProfileId, needToShowLoading);
      getUserPostsById();
    } else {
      getUserProfileDetails(needToShowLoading);
      getUserPosts();
    }
  }

  Future getUserProfileDetailsById(String id, bool isNeedShowToLoading) async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      if (isNeedShowToLoading) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      }
      GetProfileDetailsByIdBody body = GetProfileDetailsByIdBody("User", id);
      BaseResponse<ProfileDetailsByIdResponse> response =
          await _tamelyApi.getProfileDetailsById(body, true);
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        if (isNeedShowToLoading) {
          _dialogService.completeDialog(DialogResponse(confirmed: true));
          _navigationService.back();
        }

        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        setProfileDetailsByIdValues(response.data!).then((value) =>
            isNeedShowToLoading
                ? _dialogService.completeDialog(DialogResponse(confirmed: true))
                : {});
      } else {
        if (isNeedShowToLoading) {
          _dialogService.completeDialog(DialogResponse(confirmed: true));
        }
      }
    });
  }

  Future getUserProfileDetails(bool isNeedShowToLoading) async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      if (isNeedShowToLoading) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      }
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        if (isNeedShowToLoading) {
          _dialogService.completeDialog(DialogResponse(confirmed: true));
          _navigationService.back();
        }
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        setValues(response.data!).then((value) => isNeedShowToLoading
            ? _dialogService.completeDialog(DialogResponse(confirmed: true))
            : {});
      } else {
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      }
    });
  }

  Future getUserPosts() async {
    BaseResponse<ListOfFeedPostResponse> response =
        await _tamelyApi.getUserPosts(true);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      log.d(response.data!.toString());
      _listOfPosts.clear();
      _listOfPosts.addAll(response.data!.listOfPosts ?? []);
      notifyListeners();
    }
  }

  Future getUserPostsById({bool fromRefresh = false}) async {
    if (fromRefresh) {
      _counter = 0;
      _listOfPosts.clear();
      _isEndOfList = false;
      notifyListeners();
    }
    _isLoading = true;
    notifyListeners();
    BaseResponse<ListOfFeedPostResponse> response =
        await _tamelyApi.getUserPostsById(
            GetPostByIdBody(
                inspectID, GlobalMethods.getProfileType(true), _counter),
            true);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _isLoading = false;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _listOfPosts.addAll(response.data!.listOfPosts ?? []);
      if ((response.data!.listOfPosts ?? []).length < 20) {
        _isEndOfList = true;
        notifyListeners();
      }
      _counter++;
      _isLoading = false;
      notifyListeners();
    }
  }

  String _Id = "";
  String _fullname = "";
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

  bool isMyAnimalsVisibile = true;
  bool _profileCompleted = false;

  bool isFollowing = false;

  List<PetBasicDetailsResponse> _listOfMyAnimals = [];
  List<FeedPostResponse> _listOfPosts = [];

  List<PetBasicDetailsResponse> get listOfMyAnimals => _listOfMyAnimals;

  List<FeedPostResponse> get listOfPosts => _listOfPosts;

  String get fullname => _fullname;

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

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

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
        arguments: FollowPeopleProfileActionViewArguments(id: _Id));

    if (result != null) {
      if (result == 1) {
        getUserProfileDetails(true);
      }
    }
  }

  void goToListOfFollowers() async {
    var result = await _navigationService.navigateTo(Routes.listOfFollowings,
        arguments: ListOfFollowingsArguments(id: _Id, isFollowers: true));

    if (result != null) {
      if (result == 1) {
        getUserProfileDetails(true);
      }
    }
  }

  void goToListOfFollowings() async {
    var result = await _navigationService.navigateTo(Routes.listOfFollowings,
        arguments: ListOfFollowingsArguments(id: _Id, isFollowers: false));

    if (result != null) {
      if (result == 1) {
        getUserProfileDetails(true);
      }
    }
  }

  void goToCreateAnimalProfileView() async {
    await _createAnimalProfileView();
  }

  void goToAnimalProfileView(String _petId, String _petToken) async {
    await _navigationService.navigateToView(
      AnimalProfileView(
        isFromDashboard: false,
        isInspectView: false,
        id: _petId,
        token: _petToken,
      ),
      // Routes.animalProfileView,
      // arguments: AnimalProfileViewArguments(
      //   isFromDashboard: false,
      //   isInspectView: false,
      //   id: _petId,
      //   token: _petToken,
      // ),
    );
  }

  void goToPostDetailsView(FeedPostResponse postResponse, int index) async {
    var result = await _navigationService.navigateTo(
        Routes.singlePostDetailsView,
        arguments: SinglePostDetailsViewArguments(postResponse: postResponse));

    if (result == 1) {
      _listOfPosts.removeAt(index);
      notifyListeners();
    }
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

  Future followThisProfile(String fromID, String toID, String fromType) async {
    if (fromID != toID) {
      if (!isFollowing) {
        isFollowing = true;
        notifyListeners();
        SendFollowRequestBody body = SendFollowRequestBody(
          FromRequestBody(fromID, fromType),
          ToRequestBody(
            toID,
            "User",
          ),
        );
        var result = await _tamelyApi.sendFollowRequest(body, isHuman,
            animalToken: petToken);
        if (result.data != null) {
          _noOfFollowers++;
          notifyListeners();
        }
      }
    } else {
      _snackBarService.showSnackbar(message: "You can't follow yourself!");
    }
  }

  void goToProfileEditView() async {
    var result = await _navigationService.navigateTo(
      Routes.profileCreateView,
      arguments: ProfileCreateViewArguments(
        user:
            LocalUser(username: _username, fullName: _fullname, bio: _shortBio),
        isEdit: true,
        lastAvatarUrl: _profileImgUrl,
      ),
    );
    if (result == 1) {
      getUserProfileDetails(true);
    }
  }

  Future setValues(UserProfileDetailsResponse response) async {
    _completedProfileStepCount = 0;
    _listOfMyAnimals.clear();

    UserDetailsModelResponse userDetailsModelResponse =
        response.userDetailsModel!;
    _Id = userDetailsModelResponse.Id ?? "";
    _fullname = userDetailsModelResponse.fullName ?? "";
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

  Future setProfileDetailsByIdValues(
      ProfileDetailsByIdResponse response) async {
    _completedProfileStepCount = 0;
    _listOfMyAnimals.clear();
    notifyListeners();
    UserDetailsModelResponse userDetailsModelResponse = response.user!;
    _Id = userDetailsModelResponse.Id ?? "";
    _fullname = userDetailsModelResponse.fullName ?? "";
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
  }

  Future createPost() async {
    _navigationService.navigateTo(Routes.postCreation);
  }

  Future imageTapped(String url) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.ImagePopUpDialog,
      barrierDismissible: true,
      data: url,
    );
  }
}
