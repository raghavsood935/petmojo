import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends FutureViewModel<void> implements Initialisable {
  final log = getLogger('StartupViewModel');
  final _navigationService = locator<NavigationService>();
  String? _destinationRoute = Routes.loginView;
  dynamic _destinationArguments;

  Future _replaceWith() async {
    if (_destinationRoute != null) {
      await _navigationService.replaceWith(
        _destinationRoute!,
        arguments: _destinationArguments,
      );
    }
  }

  @override
  Future initialise() {
    super.initialise();
    log.d("Initialise");
    indicateAnimationComplete();
    return Future.value(0);
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }

  void indicateAnimationComplete() async {
    await Future.delayed(Duration(seconds: 2));
    log.d("indicateAnimationComplete");
    notifyListeners();
  }

  void moveToNext() async {
    await _replaceWith();
  }
}
