import 'package:logger/logger.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/ImageConstant.dart';

class DashboardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();

  bool _hideNavBar = false;

  final log = Logger(printer: SimpleLogPrinter('HomeViewModel'));

  DashboardViewModel();

  bool get hideNavBar => _hideNavBar;

  bool isLoading = false;

  bool isErrorInLoading = false;

  String _userID = "";
  String get userID => _userID;

  String _profileName = "Harsh Mittal";
  String get profileName => _profileName;

  String _userName = "harsh.mittal";
  String get userName => _userName;

  String _avatarUrl = "";
  String get avatarUrl => _avatarUrl;

  int _notificationCount = 0;
  int get notificationCount => _notificationCount;

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  int initialState = 0;

  List<ProfileSelectBarItem> _listOfProfiles = [];
  List<ProfileSelectBarItem> get listOfProfiles => _listOfProfiles;

  set hideNavBar(val) {
    _hideNavBar = val;
    notifyListeners();
  }

  PersistentTabController _controller = PersistentTabController();
  PersistentTabController get controller => _controller;

  void controllerIndex(int index) {
    _controller.index = index;
    notifyListeners();
  }

  @override
  Future initialise() {
    super.initialise();
    _sharedPrefService.currentState = getRedirectStateName(RedirectState.Home);
    return Future.value(0);
  }

  @override
  Future<void> futureToRun() async {
    notifyListeners();
    return Future.value(0);
  }

  /// Called when an error occurs within the future being run
  @override
  void onError(error) {
    print('error=' + error.toString());
    this.setError(error);
    _snackBarService.showSnackbar(message: 'Please try later.');
  }

  /// Called after the data has been set
  @override
  void onData(void data) async {
    setBusy(true);
    setBusy(false);
    notifyListeners();
  }

  Future init(
    int initalState,
    bool isNeedToUpdateProfile,
    bool isHuman,
    String petId,
    String petToken,
    int initialPageState,
  ) async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _controller = PersistentTabController(initialIndex: initialPageState);
      this.initialState = initalState;
      this.isHuman = isHuman;
      this.petId = petId;
      this.petToken = petToken;
      notifyListeners();
      isLoading = true;
      isErrorInLoading = false;
      notifyListeners();
      if (isNeedToUpdateProfile) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      }
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _dialogService.completeDialog(DialogResponse(confirmed: true));
        _navigationService.back();
        isErrorInLoading = true;
        notifyListeners();
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        _userName = response.data!.userDetailsModel!.fullName ?? "";
        _profileName = response.data!.userDetailsModel!.username ?? "";
        _avatarUrl = response.data!.userDetailsModel!.avatar ?? "";
        _userID = response.data!.userDetailsModel!.Id ?? "";
        _listOfProfiles.insert(
          0,
          ProfileSelectBarItem(
            _avatarUrl,
            "",
            "",
            true,
          ),
        );
        if (!isHuman) {
          var animalProfileResponse = await _tamelyApi.getAnimalProfileDetail(
              AnimalProfileDetailsBody(petId),
              animalToken: petToken);
          if (animalProfileResponse.data != null) {
            _userName =
                animalProfileResponse.data!.animalprofileModel!.name ?? "";
            _profileName =
                animalProfileResponse.data!.animalprofileModel!.username ?? "";
            _avatarUrl =
                animalProfileResponse.data!.animalprofileModel!.avatar ??
                    emptyProfileImgUrl;
          }
        }

        for (PetBasicDetailsResponse petResponse
            in response.data!.userDetailsModel!.listOfPets ?? []) {
          _listOfProfiles.add(
            ProfileSelectBarItem(
                petResponse.detailsResponse!.avatar ?? emptyProfileImgUrl,
                petResponse.detailsResponse!.Id!,
                petResponse.detailsResponse!.token!,
                false),
          );
        }

        _sharedPrefService.saveCurrentProfile(
          CurrentProfile(
            userName,
            profileName,
            avatarUrl,
            isHuman,
            petId,
            petToken,
            userID,
            initialPageState,
          ),
        );
        isLoading = false;
        notifyListeners();
        _dialogService.completeDialog(DialogResponse(confirmed: true));
        getNotificationCount();
      } else {
        _navigationService.back();
      }
    });

    // print(_sharedPrefService.getCurrentUser().toString());
  }

  Future getNotificationCount() async {
    var result =
        await _tamelyApi.getListOfNotification(isHuman, petToken: petToken);

    if (result.data != null) {
      _notificationCount = result.data!.listOfNotification!.length;
      notifyListeners();
    }
  }

  void onWalletPressed() async {
    await _navigationService.navigateTo(Routes.walletView);
  }

  void onMyBookingsPressed() async {
    await _navigationService.navigateTo(Routes.appointmentsView);
  }

  void onSettingsPressed() async {
    await _navigationService.navigateTo(Routes.settingsHumanView);
  }

  void onBookmarksPressed() async {
    await _navigationService.navigateTo(Routes.bookmarksView);
  }

  void onNotificationPressed() async {
    await _navigationService.navigateTo(Routes.notifications);
  }

  void onChatPressed() {}

  void onFeedbackPressed() async {
    await _navigationService.navigateTo(Routes.feedbackView);
  }

  void onHelpPressed() async {
    await _navigationService.navigateTo(Routes.helpView);
  }

  void onLogOutPressed() async {
    _sharedPrefService.clearLoginData();
    _sharedPrefService.currentState =
        getRedirectStateName(RedirectState.Welcome);
    _navigationService.pushNamedAndRemoveUntil(Routes.onBoardingView);
  }
}

class ProfileSelectBarItem {
  String avatar;
  String id;
  String token;
  bool isHuman;

  ProfileSelectBarItem(this.avatar, this.id, this.token, this.isHuman);
}
