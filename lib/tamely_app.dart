import 'package:flutter/material.dart';
import 'package:kubelite/services/connectivity_service.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:kubelite/shared/connectivity_status.dart';
import 'package:kubelite/theme_setup.dart';
import 'package:kubelite/ui/home/home_view.dart';
import 'package:kubelite/ui/startup/startup_view.dart';
import 'package:kubelite/util/Color.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

class TamelyApp extends StatefulWidget {
  @override
  _TamelyAppState createState() => _TamelyAppState();
}

class _TamelyAppState extends State<TamelyApp> {
  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  final service = locator<SnackbarService>();

  @override
  void initState() {
    super.initState();
    setupSnackBarUi();
  }

  void setupSnackBarUi() {
    // Registers a config to be used when calling showSnackBar
    service.registerSnackbarConfig(SnackbarConfig(
      backgroundColor: colors.primary,
      textColor: Colors.white,
      mainButtonTextColor: Colors.black,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>(
      initialData: ConnectivityStatus.Offline,
      create: (context) =>
          ConnectivityService().connectionStatusController.stream,
      child: ThemeBuilder(
          themes: getThemes(),
          builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
                theme: regularTheme,
                debugShowCheckedModeBanner: false,
                darkTheme: darkTheme,
                themeMode: themeMode,
                // Add the `localizationsDelegate` and `supportedLocales` lines.
                title: "Tamely App",
                home: _getStartupScreen(),
                onGenerateRoute: StackedRouter().onGenerateRoute,
                navigatorKey: StackedService.navigatorKey,
              )),
    );
  }

  Widget _getStartupScreen() {
    if (!_sharedPreferencesService.homeVisible) {
      return StartupView();
      // } else if (_sharedPreferencesService.authToken.isEmpty) {
      //   return LoginView();
    } else {
      return HomeView();
    }
  }
}
