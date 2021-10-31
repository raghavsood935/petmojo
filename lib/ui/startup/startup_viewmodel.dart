import 'package:flutter/services.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/enum/redirect_state.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends FutureViewModel<void> implements Initialisable {
  final log = getLogger('StartupViewModel');
  final _navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  String? _destinationRoute;
  final _sharedPreferencesService = locator<SharedPreferencesService>();
  dynamic _destinationArguments;

  bool get isDestinationAvailable => _destinationRoute != null;

  Future initialise() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    // _sharedPreferencesService.clearLoginData();
    var currentState = _sharedPreferencesService.currentState;

    switch (getRedirectState(currentState)) {
      case RedirectState.Start:
        _destinationRoute = null;
        break;

      case RedirectState.Welcome:
        _destinationRoute = Routes.onBoardingView;
        break;

      case RedirectState.ProfileCreate:
        _destinationRoute = Routes.profileCreateView;
        _destinationArguments =
            ProfileCreateViewArguments(user: _userService.currentUser);
        break;

      case RedirectState.Home:
        _destinationRoute = Routes.dashboard;
        break;
    }
    // _destinationRoute = Routes.confirmOTPView;
    // _destinationArguments = ConfirmOTPViewArguments(
    //     isEmailVerify: true,
    //     verificationData: _userService.currentUser.email ?? "");

    log.d("Current State : $_destinationRoute");
  }

  Future _replaceWith({String? route, dynamic arguments}) async {
    var hasDestinationRoute = _destinationRoute != null;
    var hasDestinationArguments = _destinationArguments != null;

    // Set the route only if we don't have a route
    if (!hasDestinationRoute) {
      _destinationRoute = route!;
    }

    // set the arguments only if we don't have arguments
    if (!hasDestinationArguments) {
      _destinationArguments = arguments;
    }

    await _navigationService.replaceWith(
      _destinationRoute!,
      arguments: _destinationArguments,
    );
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }

  Future<void> moveToRedirectState() async {
    if (_destinationRoute != null) {
      await _replaceWith();
    }
  }

  void moveToNext() async {
    if (_destinationRoute == null) {
      _destinationRoute = Routes.onBoardingView;
    }
    await _replaceWith();
  }
}
