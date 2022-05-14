import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/notification_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

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
    if (notification.notificationDataResponse!.actionOnCTA != "MYBOOKINGS") {
      await _navigationService.navigateTo(
        Routes.appointmentsView,
      );
    }
  }

  void onChatPressed() {}
}
