import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  List<NotificationResponse> listOfNotification = [];

  bool isHuman = true;
  String petToken = "";

  bool isLoading = false;

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petToken = profile.petToken;
    notifyListeners();

    getNotification();
  }

  Future getNotification() async {
    isLoading = true;
    notifyListeners();
    var result =
        await _tamelyApi.getListOfNotification(isHuman, petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      isLoading = false;
      notifyListeners();
      _snackbarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      listOfNotification.addAll(result.data!.listOfNotification ?? []);
      isLoading = false;
      notifyListeners();
    }
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
    _snackbarService.showSnackbar(message: 'Please try later.');
  }

  /// Called after the data has been set
  @override
  void onData(void data) async {
    setBusy(true);
    setBusy(false);
    notifyListeners();
  }

  void onNotificationPressed(NotificationResponse notification) async {
    if (notification.notificationDataResponse!.actionOnCTA == "MYBOOKINGS") {
      await _navigationService.navigateTo(
        Routes.appointmentsView,
      );
    } else if (notification.notificationDataResponse!.actionOnCTA == "DRLIVE") {
      WalkNumber walkNo = notification.notificationDataResponse!.walkNo == "one"
          ? WalkNumber.One
          : WalkNumber.Two;
      await _navigationService.navigateTo(Routes.dRLiveMapView,
          arguments: DRLiveMapViewArguments(
            selectedData: DateTime.now(),
            walkNumber: notification.notificationDataResponse!.walkNo == "one"
                ? WalkNumber.One
                : WalkNumber.Two,
            serviceProviderId:
                notification.notificationDataResponse!.serviceProviderId ?? "",
            userId: notification.notificationDataResponse!.userId ?? "",
            appointmentId:
                notification.notificationDataResponse!.appointmentId ?? "",
            timeElasped: 0
          ));
    } else if (notification.notificationDataResponse!.actionOnCTA ==
        "PHONECALL") {
      String phoneNumber =
          notification.notificationDataResponse!.valueForCTA ?? "";
      print("Calling $phoneNumber");
      await launch("tel:$phoneNumber");
    } else if (notification.notificationDataResponse!.actionOnCTA ==
        "DRREPORT") {
      print(notification.notificationDataResponse!.walkNo);
      WalkNumber walkNumber =
          notification.notificationDataResponse!.walkNo == "one"
              ? WalkNumber.One
              : WalkNumber.Two;
      print("Setting walk number : ${walkNumber.toString()}");
      DateTime walkDate = DateTime.fromMillisecondsSinceEpoch(
          notification.notificationDataResponse!.date ?? 0);
      await _navigationService.navigateTo(Routes.dRReportCardView,
          arguments: DRReportCardViewArguments(
              noOfDogs: notification.notificationDataResponse!.noOfDogs ?? 1,
              walkNumber: walkNumber,
              appointmentId:
                  notification.notificationDataResponse!.appointmentId ?? "",
              dogs: notification.notificationDataResponse!.dogs ?? [],
              date: walkDate));
    } else if (notification.notificationDataResponse!.actionOnCTA == "DTLIVE") {
      await _navigationService.navigateTo(Routes.dTAppointmentDetailsView,
          arguments: DTAppointmentDetailsViewArguments(
              appointmentId:
                  notification.notificationDataResponse!.bookingDetailsId ??
                      ""));
    } else if (notification.notificationDataResponse!.actionOnCTA ==
        "DTREPORT") {
      await _navigationService.navigateTo(Routes.dTReportCardView,
          arguments: DTReportCardViewArguments(
            appointmentId:
                notification.notificationDataResponse!.bookingDetailsId ?? "",
            sessionNo: notification.notificationDataResponse!.sessionNo ?? 1,
          ));
    }
  }

  void onNotificationIconPressed() {}

  void onChatPressed() {}
}
