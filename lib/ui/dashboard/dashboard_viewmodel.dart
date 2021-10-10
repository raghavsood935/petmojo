import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DashboardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _dialogService = locator<DialogService>();
  final _snackbarService = locator<SnackbarService>();
  final String productImage =
      "https://www.gannett-cdn.com/-mm-/a0a28bd666af6d80b33247a358069ae6b7ce0cc4/c=0-108-2121-1306/local/-/media/2016/07/22/USATODAY/USATODAY/636047914661198701-ThinkstockPhotos-467612138.jpg";

  final log = Logger(printer: SimpleLogPrinter('HomeViewModel'));
  DashboardViewModel();

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
}
