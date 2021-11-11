import 'package:get_it/get_it.dart';
import 'package:stacked_themes/src/services/platform_service.dart';
import 'package:stacked_themes/src/services/shared_preferences_service.dart';
import 'package:stacked_themes/src/services/statusbar_service.dart';

final locator = GetIt.asNewInstance();

Future setupLocator() async {
  SharedPreferencesService sharedPreferences =
      await SharedPreferencesService.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerLazySingleton(() => StatusBarService());
  locator.registerLazySingleton(() => PlatformService());
}
