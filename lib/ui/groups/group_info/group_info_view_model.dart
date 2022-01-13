import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/models/list_of_feed_post_response.dart';
import 'package:tamely/models/params/groups/edit_group_cover_body.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/models/params/groups/group_basic_with_counter_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/global_methods.dart';

class GroupInfoViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackbarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _tamelyApi = locator<TamelyApi>();

  String groupId = "";

  bool isHuman = true;
  String petId = "";
  String petToken = "";
  String profileImg = "";

  bool isLoading = false;

  bool isJoinLoading = false;

  String _groupAvatar =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";

  String _groupName = "Cat Vibes Only";
  String _coverImgurl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";
  int _membersCount = 0;
  String _groupDescription =
      "How often are you home? If you work long hours, a dog may not be a good choice of guyzn";
  List<String> _groupHashtag = [];
  bool _isPrivate = false;
  bool _isAdmin = false;
  bool _isMember = false;

  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;

  String get groupAvatar => _groupAvatar;

  String get groupName => _groupName;

  String get coverImgurl => _coverImgurl;

  int get membersCount => _membersCount;

  String get groupDescription => _groupDescription;

  bool get isPrivate => _isPrivate;

  bool get isAdmin => _isAdmin;

  bool get isMember => _isMember;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  int get completedProfileStepCount => _completedProfileStepCount;

  void back() {
    _navigationService.back();
  }

  Future init(String grpID, bool isFromRefresh) async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    profileImg = profile.profileImgUrl;

    groupId = grpID;
    notifyListeners();

    getGroupDetails();
    getGroupPosts(fromRefresh: true);
  }

  Future gotToMember() async {
    var result = await _navigationService.navigateTo(Routes.membersView,
        arguments: MembersViewArguments(
            groupId: groupId, isMember: isMember, isAdmin: isAdmin));

    if (result) {
      getGroupDetails();
      getGroupPosts(fromRefresh: true);
    }
  }

  Future getGroupDetails() async {
    isLoading = true;
    notifyListeners();

    var result = await _tamelyApi.getGroupDetails(
      GroupBasicBody(groupId),
      isHuman,
      animalToken: petToken,
    );

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() !=
          "Connection failed due to internet connection") {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      }
      isLoading = false;
      notifyListeners();
    } else if (result.data != null) {
      _completedProfileStepCount = 0;

      GroupBasicInfoResponse response = result.data!.group!;

      _groupAvatar = response.avatar ?? "";
      _groupName = response.name ?? "-";
      _coverImgurl = response.coverPhoto ?? "";
      _groupDescription = response.description ?? "";
      _groupHashtag = response.hashtags ?? [];
      _membersCount = response.members ?? 0;
      _isAdmin = response.isAdmin ?? false;
      _isMember = response.isMember ?? false;

      if (_groupDescription.isNotEmpty) {
        _completedProfileStepCount++;
      }

      if (_membersCount > 1) {
        _completedProfileStepCount++;
      }

      isLoading = false;
      notifyListeners();
    }
  }

  final ImagePicker _picker = ImagePicker();
  dynamic _pickImageError;
  XFile? _imageFile;
  File? _editedImage;

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
      _snackbarService.showSnackbar(message: "Image Error $e");
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
    editCoverPhoto();
  }

  Future editCoverPhoto() async {
    _coverImgurl = await GlobalMethods.imageToLink(_editedImage!);
    notifyListeners();
    try {
      EditGroupCoverBody body = EditGroupCoverBody(groupId, _coverImgurl);
      var result =
          await _tamelyApi.editCoverPhoto(body, isHuman, petToken: petToken);
    } catch (e) {
      _snackbarService.showSnackbar(message: "$e");
    }
  }

  Future onManageTapped() async {
    var result = await _navigationService.navigateTo(
      Routes.manageGroupView,
      arguments: ManageGroupViewArguments(
        groupId: groupId,
        name: _groupName,
        description: _groupDescription,
        avatar: _groupAvatar,
        hashTag: _groupHashtag,
        isMember: isMember,
        isAdmin: isAdmin,
      ),
    );

    if (result) {
      getGroupDetails();
      getGroupPosts(fromRefresh: true);
    }
  }

  Future onInviteTapped() async {
    await _navigationService.navigateTo(Routes.createGroupThirdView,
        arguments: CreateGroupThirdViewArguments(
            groupId: groupId, isFromEditView: true));
  }

  Future onCreatePostTapped() async {
    await _navigationService.navigateTo(Routes.postCreation);
  }

  Future joinGroup() async {
    isJoinLoading = true;
    notifyListeners();
    var result = await _tamelyApi.joinGroup(GroupBasicBody(groupId), isHuman,
        petToken: petToken);

    if (result.getException != null) {
      isJoinLoading = false;
      notifyListeners();
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() == "Received invalid status code: 400") {
        _snackbarService.showSnackbar(message: "You are already a member!");
      } else {
        _snackbarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (result.data != null) {
      _snackbarService.showSnackbar(message: result.data!.message ?? "");
      if (result.data!.success ?? false) {
        getGroupDetails();
        getGroupPosts(fromRefresh: true);
      }
      isJoinLoading = false;
      notifyListeners();
    }
  }

  Future onAddDetailsTapped() async {
    await _navigationService.navigateTo(
      Routes.createGroupSecondView,
      arguments: CreateGroupSecondViewArguments(
        groupId: groupId,
        isFromEditView: true,
        hashtag: _groupHashtag,
        description: _groupDescription,
      ),
    );
  }

  List<FeedPostResponse> _listOfPosts = [];
  List<FeedPostResponse> get listOfPosts => _listOfPosts;

  int _counter = 0;
  bool _isPostLoading = false;
  bool _isEndOfList = false;

  bool get isPostLoading => _isPostLoading;
  bool get isEndOfList => _isEndOfList;

  Future getGroupPosts({bool fromRefresh = false}) async {
    if (fromRefresh) {
      _counter = 0;
      _listOfPosts.clear();
      _isEndOfList = false;
      notifyListeners();
    }
    _isPostLoading = true;
    notifyListeners();
    BaseResponse<ListOfFeedPostResponse> response = await _tamelyApi
        .getGroupPosts(GroupBasicWithCounterBody(groupId, _counter), isHuman,
            animalToken: petToken);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _isPostLoading = false;
      notifyListeners();
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _listOfPosts.addAll(response.data!.listOfPosts ?? []);
      if ((response.data!.listOfPosts ?? []).length < 20) {
        _isEndOfList = true;
        notifyListeners();
      }
      _counter++;
      _isPostLoading = false;
      notifyListeners();
    }
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

  Future imageTapped(String url) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.ImagePopUpDialog,
      barrierDismissible: true,
      data: url,
    );
  }
}
