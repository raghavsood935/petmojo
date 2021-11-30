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
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:tamely/services/user_service.dart';

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

  String _profileName = "Harsh Mittal";
  String get profileName => _profileName;

  String _userName = "harsh.mittal";
  String get userName => _userName;

  String _avatarUrl = "";
  String get avatarUrl => _avatarUrl;

  set hideNavBar(val) {
    _hideNavBar = val;
    notifyListeners();
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
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

  Future init() async {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        _navigationService.back();
      } else if (response.data != null) {
        _userName = response.data!.userDetailsModel!.fullName ?? "";
        _profileName = response.data!.userDetailsModel!.username ?? "";
        _avatarUrl = response.data!.userDetailsModel!.avatar ?? "";
        notifyListeners();
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      } else {
        _navigationService.back();
      }
    });

    // print(_sharedPrefService.getCurrentUser().toString());
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
