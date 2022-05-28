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
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/guardians_model.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/edit_animal_profile_main_details_body.dart';
import 'package:tamely/models/params/get_post_by_id.dart';
import 'package:tamely/models/params/send_follow_request_body/from_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/send_follow_request_body.dart';
import 'package:tamely/models/params/send_follow_request_body/to_request_body.dart';
import 'package:tamely/services/aws_upload_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/utils.dart';
import 'package:tamely/widgets/dialogs/image_pop_dailog_view.dart';

class AnimalProfileViewModel extends FutureViewModel {
  final log = getLogger('AnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();
  final _snackBarService = locator<SnackbarService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _uploadService = locator<CloudStorageService>();

  MyAnimalModelResponse? myAnimalModelResponse;

  bool _isHuman = true;
  String _inspecterId = "";
  String _inspecterToken = "";

  String _Id = "";
  String _token = "";

  int _counter = 0;
  bool _isLoading = true;
  bool _isEndOfList = false;

  String _profilename = "";
  String _username = "";
  String _animalBreed = "";
  String _avatar = "";
  String _shortBio = "";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool _isUpForAdoption = true;
  bool _isUpForMating = true;
  bool _isUpForPlayBuddies = true;

  bool isFollowing = false;

  bool isGuardian = false;

  bool isBrandAmbassador = false;

  List<FeedPostResponse> _listOfPosts = [];

  String get profilename => _profilename;

  String get username => _username;

  String get avatar => _avatar;

  String get shortBio => _shortBio;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get noOfHearts => _noOfHearts;

  int get noOfFollowing => _noOfFollowing;

  int get noOfFollowers => _noOfFollowers;

  int get noOfPosts => _noOfPosts;

  String get animalBreed => _animalBreed;

  bool get isUpForAdoption => _isUpForAdoption;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get isUpForMating => _isUpForMating;

  bool get isUpForPlayBuddies => _isUpForPlayBuddies;

  List<FeedPostResponse> get listOfPosts => _listOfPosts;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;
  XFile? _imageFile;
  File? _editedImage;

  void onImageButtonPressed(ImageSource source, BuildContext? context) async {
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
      compressQuality: 100,
    );
    notifyListeners();
    editAnimalProfileDetails();
  }

  Future editAnimalProfileDetails() async {
    // _avatar = await GlobalMethods.imageToLink(_editedImage!);
    if (_editedImage == null) {
      _snackBarService.showSnackbar(message: "Image is empty");
      return;
    }
    if (await Util.checkInternetConnectivity()) {
      String awsKey = await _uploadService.uploadFile(
        file: _editedImage!,
        fileName: "petAvatar.jpg",
      );
      if (awsKey != null && awsKey != "UPLOADFAIL") {
        _avatar = awsKey;
      } else {
        _snackBarService.showSnackbar(message: "Image upload failed");
        return;
      }
    }
    notifyListeners();
    try {
      EditAnimalProfileMainDetailsBody body = EditAnimalProfileMainDetailsBody(
        _Id,
        _profilename,
        _username,
        _shortBio,
        _avatar,
      );
      var result = await runBusyFuture(
          _tamelyApi.editAnimalProfileMainDetails(body),
          throwException: true);
      getAnimalDetails();
    } catch (e) {
      log.e(e);
      _snackBarService.showSnackbar(message: "$e");
    }
  }

  void goToAnimalBasicInfo(bool isInspectView) async {
    var result = await _navigationService.navigateTo(
      Routes.animalBasicInfo,
      arguments: AnimalBasicInfoArguments(
          animalModelResponse: myAnimalModelResponse!,
          petToken: _token,
          isEditable: isInspectView ? isGuardian : true),
    );

    if (result == 1) {
      getAnimalDetails();
    }
  }

  void goToAddGuardiansAndRelations() async {
    await _navigationService.navigateTo(
      Routes.guardiansAndRelatedAnimalsView,
      arguments: GuardiansAndRelatedAnimalsViewArguments(
        petID: _Id,
        petToken: _token,
      ),
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

  void goToAnimalEdit() async {
    var result = await _navigationService.navigateTo(Routes.profileCreateView,
        arguments: ProfileCreateViewArguments(
            user: LocalUser(
              username: _profilename,
              fullName: _username,
              bio: _shortBio,
            ),
            isEdit: true,
            isAnimal: true,
            lastAvatarUrl: _avatar,
            petID: _Id,
            petToken: _token));

    if (result == 1) {
      getAnimalDetails();
    }
  }

  void goBack() async {
    _navigationService.back();
  }

  Future init(bool isFromDashboard, String id, String token,
      {bool fromRefresh = false}) async {
    if (isFromDashboard) {
      CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();
      _Id = profile.petId;
      _token = profile.petToken;
      _isHuman = profile.isHuman;
      notifyListeners();
    } else {
      CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();
      _Id = id;
      _token = token;

      _inspecterId = profile.isHuman ? profile.userId : profile.petId;
      _inspecterToken = profile.isHuman ? "" : profile.petToken;
      _isHuman = profile.isHuman;

      notifyListeners();
    }
    getAnimalDetails();
    getAnimalPosts(fromRefresh: fromRefresh);
  }

  Future getAnimalPosts({bool fromRefresh = false}) async {
    if (fromRefresh) {
      _counter = 0;
      _listOfPosts.clear();
      _isEndOfList = false;
      notifyListeners();
    }
    _isLoading = true;
    notifyListeners();
    // BaseResponse<ListOfFeedPostResponse> response =
    //     await _tamelyApi.getUserPostsById(
    //         GetPostByIdBody(_Id, GlobalMethods.getProfileType(true), _counter),
    //         false,
    //         petToken: _token);
    BaseResponse<ListOfFeedPostResponse> response =
        await _tamelyApi.getUserPosts(false, petToken: _token);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _isLoading = false;
      notifyListeners();
      _dialogService.completeDialog(DialogResponse(confirmed: true));
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

  Future getAnimalDetails() async {
    var response = await runBusyFuture(_tamelyApi.getAnimalProfileDetail(
        AnimalProfileDetailsBody(_Id),
        animalToken: _token));

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      setValues(response.data!);
    }
  }

  Future setValues(AnimalProfileDetailModelResponse response) async {
    isGuardian = false;
    myAnimalModelResponse = response.animalprofileModel;

    _profilename = response.animalprofileModel!.username ?? "";
    _username = response.animalprofileModel!.name ?? "";
    _shortBio = response.animalprofileModel!.bio ?? "";
    _avatar = await _uploadService.getUrlFromAwsKey(
        awsKey: response.animalprofileModel!.avatar);
    // _avatar = response.animalprofileModel!.avatar ?? "";
    _animalBreed = response.animalprofileModel!.breed ?? "";

    _isUpForAdoption = response.animalprofileModel!.adoption ?? false;
    _isUpForMating = response.animalprofileModel!.mating ?? false;
    _isUpForPlayBuddies = response.animalprofileModel!.playBuddies ?? false;

    isBrandAmbassador = response.animalprofileModel!.isBrandAmbassador ?? false;

    for (GuardiansModelResponse response
        in response.animalprofileModel!.guardians ?? []) {
      if (response.Id == _inspecterId) {
        isGuardian = true;
        notifyListeners();
      }
    }

    notifyListeners();
  }

  Future followThisProfile(String fromID, String toID, String fromType) async {
    isFollowing = !isFollowing;
    notifyListeners();
    SendFollowRequestBody body = SendFollowRequestBody(
      FromRequestBody(_inspecterId, GlobalMethods.getProfileType(_isHuman)),
      ToRequestBody(
        toID,
        "Animal",
      ),
    );
    var result = await _tamelyApi.sendFollowRequest(body, _isHuman,
        animalToken: _inspecterToken);
    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      if (error.getErrorMessage() == " You can't follow yourself!") {
        isFollowing = false;
        notifyListeners();
      }
    } else if (result.data != null) {
      _noOfFollowers++;
      notifyListeners();
    }
  }

  Future createPost() async {
    _navigationService.navigateTo(Routes.postCreation);
  }

  Future imageTapped(BuildContext context, String url) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ImagePopUpView(url: url),
      ),
    );
  }

  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
    // return (Future<void>.value());
  }
}
