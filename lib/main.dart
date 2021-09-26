import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kubelite/services/shared_preferences_service.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'app/app.locator.dart';
import 'tamely_app.dart';
import 'widgets/dialogs/setup_bottom_sheet_ui.dart';
import 'widgets/dialogs/setup_dialog_ui.dart';

void main() async {
  await initApp();
  runApp(TamelyApp());
}

Future initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // await Firebase.initializeApp();
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await ThemeManager.initialise();

  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();
  await _sharedPreferencesService.initialise();

  // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}
