import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/my_animals_model.dart';
import 'package:tamely/models/user_details_model.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/profilepage/post_tabs/mentions_post_tab.dart';
import 'package:tamely/ui/profilepage/post_tabs/my_posts_tab.dart';

class ProfileViewModel extends BaseViewModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _userService = locator<UserService>();
  final _tamelyApi = locator<TamelyApi>();

  String? _animalProfileCreateView = Routes.createAnimalPageView;
  dynamic _destinationArguments;

  List<Widget> _tabs = [MyPostsTabView(), MentionsPostTabView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "My posts",
    ),
    Tab(
      text: "Mentions",
    )
  ];

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

  Future getUserProfileDetails() async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        _navigationService.back();
      } else if (response.data != null) {
        setValues(response.data!);
      } else {
        _navigationService.back();
      }
    });
  }

  Future getUserPosts() async {
    BaseResponse<CommonResponse> response = await _tamelyApi.getUserPosts();
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      log.d(response.data!.toString());
    }
  }

  String _profilename = "";
  String _username = "";
  String _profileImgUrl = "";
  String _shortBio = "";
  String _actionText = "Complete your profile";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfAnimals = 0;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool isMyAnimalsVisibile = false;
  bool _profileCompleted = false;

  List<MyAnimalModelResponse> _listOfMyAnimals = [];

  List<MyAnimalModelResponse> get listOfMyAnimals => _listOfMyAnimals;

  String get profilename => _profilename;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  String get shortBio => _shortBio;

  String get actionText => _actionText;

  int get noOfAnimals => _noOfAnimals;

  int get noOfPosts => _noOfPosts;

  int get noOfFollowers => _noOfFollowers;

  int get noOfFollowing => _noOfFollowing;

  int get noOfHearts => _noOfHearts;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get profileCompleted => _profileCompleted;

  List<Widget> get tabs => _tabs;

  List<Tab> get tabsTitle => _tabsTitle;

  void myAnimalVisible() {
    isMyAnimalsVisibile = !isMyAnimalsVisibile;
    notifyListeners();
  }

  void goToAddDetailsProfileAction() async {
    await _addDetailsPage();
  }

  void goToFollowPeopleProfileAction() async {
    await _navigationService.navigateTo(Routes.followPeopleProfileActionView);
  }

  void goToCreateAnimalProfileView() async {
    await _createAnimalProfileView();
  }

  void goToAnimalProfileView(String petId) async {
    await _navigationService.navigateTo(Routes.animalProfileView,
        arguments: AnimalProfileViewArguments(petId: petId));
  }

  void goToCompleteProfile() async {
    if (_shortBio.isEmpty) {
      goToAddDetailsProfileAction();
    } else if (_noOfFollowing == 0) {
      goToFollowPeopleProfileAction();
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

  void setValues(UserProfileDetailsResponse response) {
    _completedProfileStepCount = 0;
    _listOfMyAnimals.clear();

    UserDetailsModelResponse userDetailsModelResponse =
        response.userDetailsModel!;
    _profilename = userDetailsModelResponse.username ?? "";
    _username = userDetailsModelResponse.fullName ?? "";
    _profileImgUrl = userDetailsModelResponse.avatar ?? "";
    _shortBio = userDetailsModelResponse.bio ?? "";
    _noOfAnimals = response.myAnimals!.length;
    _noOfFollowers = response.totalFollowers!;
    _noOfFollowing = response.totalFollowings!;

    _listOfMyAnimals.addAll(response.myAnimals!);

    if (_shortBio.isNotEmpty) {
      _completedProfileStepCount++;
    }

    if (response.totalFollowings! > 0) {
      _completedProfileStepCount++;
    }

    notifyListeners();
    _navigationService.back();
  }
}
