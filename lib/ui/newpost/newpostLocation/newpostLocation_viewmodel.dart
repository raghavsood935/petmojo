import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/services/shared_preferences_service.dart';

class NewPostLocationViewModel extends FutureViewModel<void>
    implements Initialisable {
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();

  final _snackbarService = locator<SnackbarService>();

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

  void navigateBack() {
    _navigationService.back();
  }

  static List<String> location = [
    "Delhi, India",
    "Maharashtra, India",
    "Delhi, India",
    "Maharashtra, India",
    "Delhi, India",
    "Maharashtra, India",
    "Delhi, India",
    "Maharashtra, India",
  ];
}
