import 'dart:io';

import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:new_version/new_version.dart';
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
import 'package:tamely/enum/service_type.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/aws_upload_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:tamely/models/params/get_relation_requests_body.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();
  final _uploadService = locator<CloudStorageService>();

  bool _hideNavBar = false;

  final log = Logger(printer: SimpleLogPrinter('HomeViewModel'));

  DashboardViewModel();

  bool get hideNavBar => _hideNavBar;

  bool isLoading = false;

  bool isErrorInLoading = false;

  String _userID = "";
  String get userID => _userID;

  String _profileName = "";
  String get profileName => _profileName;

  String _userName = "";
  String get userName => _userName;

  String _avatarUrl = "";
  String get avatarUrl => _avatarUrl;

  int _notificationCount = 0;
  int get notificationCount => _notificationCount;

  int _noOfAppointments = 0;
  int get noOfAppointments => _noOfAppointments;

  int _serviceType = 0;
  int get serviceType => _serviceType;

  String _bookingId = "";
  String get bookingId => _bookingId;

  int _requestNotificationCount = 0;
  int get requestNotificationCount => _requestNotificationCount;

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

  Future _checkVersion(BuildContext context) async {
    print("Checking update......");
    final newVersion = NewVersion(
      androidId: "in.tamely.user",
    );
    final status = await newVersion.getVersionStatus();

    if (status!.canUpdate) {
      newVersion.showUpdateDialog(
          context: context,
          versionStatus: status,
          allowDismissal: false,
          dialogTitle: "UPDATE!!!",
          dismissButtonText: "Skip",
          updateButtonText: "Lets update",
          dialogText:
              "Please update the app from ${status.localVersion} to ${status.storeVersion}",
          dismissAction: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          });

      print(
          "Local version ${status.localVersion} \nStore version ${status.storeVersion}");
    }
  }

  Future init(
    BuildContext context,
    int initalState,
    bool isNeedToUpdateProfile,
    bool isHuman,
    String petId,
    String petToken,
    int initialPageState,
    bool? checkUpdate,
  ) async {
    if (checkUpdate ?? false) {
      _checkVersion(context);
    }

    await fetchUserDetail(
      initalState,
      isNeedToUpdateProfile,
      isHuman,
      petId,
      petToken,
      initialPageState,
    );
    notifyListeners();
    _controller = PersistentTabController(initialIndex: initialPageState);
  }

  Future fetchUserDetail(
    int initalState,
    bool isNeedToUpdateProfile,
    bool isHuman,
    String petId,
    String petToken,
    int initialPageState,
  ) async {
    this.initialState = initalState;
    this.isHuman = isHuman;
    this.petId = petId;
    this.petToken = petToken;
    notifyListeners();
    isErrorInLoading = false;
    notifyListeners();
    BaseResponse<UserProfileDetailsResponse> response =
        await _tamelyApi.getUserProfileDetail();
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _navigationService.back();
      isErrorInLoading = true;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _userName = response.data!.userDetailsModel!.fullName ?? "";
      _profileName = response.data!.userDetailsModel!.username ?? "";
      _profileName = response.data!.userDetailsModel!.username ?? "";
      _noOfAppointments = response.data!.noOfAppointments!;
      _bookingId = response.data!.bookingId!;
      _serviceType = response.data!.serviceType!;
      _avatarUrl = await _uploadService.getUrlFromAwsKey(
          awsKey: response.data!.userDetailsModel!.avatar);
      _userID = response.data!.userDetailsModel!.Id ?? "";
      _listOfProfiles.insert(
        0,
        ProfileSelectBarItem(
          _avatarUrl,
          "",
          "",
          true,
          _userName,
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
          _avatarUrl = animalProfileResponse.data!.animalprofileModel!.avatar ??
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
              false,
              petResponse.detailsResponse!.name ?? ""),
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
      getNotificationCount();
    } else {
      _navigationService.back();
    }
  }

  Future getNotificationCount() async {
    getRequests();
    var result =
        await _tamelyApi.getListOfNotification(isHuman, petToken: petToken);

    if (result.data != null) {
      _notificationCount = result.data!.listOfNotification!.length;
      notifyListeners();
    }
  }

  Future getRequests() async {
    var result;
    if (isHuman) {
      result = await _tamelyApi.getPendingGuardianRequest();
    } else {
      result = await _tamelyApi.getRelationsRequests(
          GetRelationRequestsBody(petId, "incoming"), petToken);
    }

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      if (isHuman) {
        _requestNotificationCount =
            (result.data!.listOfPendingRequests ?? []).length;
      } else {
        _requestNotificationCount =
            (result.data!.listOfRelationRequests ?? []).length;
      }
      notifyListeners();
    }
  }

  void onWalletPressed() async {
    await _navigationService.navigateTo(Routes.walletView);
  }

  void onMyBookingsPressed() async {
    await _navigationService.navigateTo(Routes.appointmentsView);
  }

  void onMyPastBookingsPressed() async {
    await _navigationService.navigateTo(Routes.myPastAppointmentsView);
  }

  void onSettingsPressed() async {
    await _navigationService.navigateTo(Routes.settingsHumanView);
  }

  void onBookmarksPressed() async {
    await _navigationService.navigateTo(Routes.bookmarksView);
  }
  Future<void> launchAppStore() async {
    String appStoreLink="https://play.google.com/store/apps/details?id=in.tamely.user";
    debugPrint(appStoreLink);
    if (await canLaunchUrl(Uri.parse(appStoreLink))) {
      await launchUrl(Uri.parse(appStoreLink));
    } else {
      throw 'Could not launch appStoreLink';
    }
  }

  void onNotificationPressed() async {
    await _navigationService
        .navigateTo(Routes.notificationMainView,
            arguments: NotificationMainViewArguments(
                haveAnyRequests: _requestNotificationCount > 0))!
        .whenComplete(() {
      getNotificationCount();
    });
  }

  void toAppointmentDetails(String bookId, int servType) async {
    String? bookingId = bookId;
    ServiceType? serviceTypes = ServiceType.values[servType];

    if (serviceTypes == ServiceType.DogRunning) {
      await _navigationService.navigateTo(
        Routes.dRAppointmentDetailsView,
        arguments: DRAppointmentDetailsViewArguments(appointmentId: bookingId),
      );
    } else if (serviceTypes == ServiceType.DogTraining) {
      await _navigationService.navigateTo(
        Routes.dTAppointmentDetailsView,
        arguments: DTAppointmentDetailsViewArguments(appointmentId: bookingId),
      );
    } else if (serviceTypes == ServiceType.DogGrooming) {
      await _navigationService.navigateTo(
        Routes.dGAppointmentDetailsView,
        arguments: DGAppointmentDetailsViewArguments(appointmentId: bookingId),
      );
    }
  }

  void onChatPressed() {}

  void onFeedbackPressed() async {
    await _navigationService.navigateTo(Routes.feedbackView);
  }

  void onHelpPressed() async {
    await _navigationService.navigateTo(Routes.helpView);
  }

  void onLogOutPressed() async {
    await _sharedPrefService.clearLoginData().whenComplete(() {
      _sharedPrefService.currentState =
          getRedirectStateName(RedirectState.Welcome);
      _navigationService.pushNamedAndRemoveUntil(Routes.loginView);
    });
  }

  Future<bool> onBackPressed() async {
    var result = await _dialogService.showCustomDialog(
      variant: DialogType.ExitAppDialog,
    );

    if (result != null) {
      if (result.confirmed) {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return false;
      }
    }
    return false;
  }

  void openWhatsapp() async {
    String whatsappNumber = helpWhatsappNumber;
    String messageToSend = whatsappMessageText;
    String androidUrl =
        "whatsapp://send?phone=$whatsappNumber&text=$messageToSend";
    String iosUrl = "https://wa.me/$whatsappNumber?text=$messageToSend";
    if (Platform.isIOS) {
      if (await canLaunch(iosUrl)) {
        await launch(iosUrl);
      } else {
        _snackBarService.showSnackbar(message: "Could not open whatsapp");
      }
    } else {
      if (await canLaunch(androidUrl)) {
        await launch(androidUrl);
      } else {
        _snackBarService.showSnackbar(message: "Could not open whatsapp");
      }
    }
  }
}

class ProfileSelectBarItem {
  String avatar;
  String id;
  String token;
  bool isHuman;
  String profileName;

  ProfileSelectBarItem(
      this.avatar, this.id, this.token, this.isHuman, this.profileName);
}
