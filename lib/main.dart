
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:tamely/services/local_notification_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/util/Color.dart';
import 'app/app.locator.dart';
import 'tamely_app.dart';
import 'widgets/dialogs/setup_bottom_sheet_ui.dart';
import 'widgets/dialogs/setup_dialog_ui.dart';

//Receiving message when app is in background for on message

Future<void> backgroundHandler(RemoteMessage message) async {
  if (message.data != null) {
    print(message.data["title"]);
    print(message.data["body"]);

    LocalNotificationService.display(message);
  }
}

void main() async {
  await initApp();
  runApp(TamelyApp());
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
}

String prettyPrint(Map json) {
  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  String pretty = encoder.convert(json);
  return pretty;
}

Future initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationService.initialize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.white),
  );
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await ThemeManager.initialise();

  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();
  await _sharedPreferencesService.initialise();

  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}
