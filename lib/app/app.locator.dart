// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/api_service.dart';
import '../services/aws_upload_service.dart';
import '../services/post_feed_details_resolver_service.dart';
import '../services/shared_preferences_service.dart';
import '../services/user_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => SharedPreferencesService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => TamelyApi());
  locator.registerLazySingleton(() => CloudStorageService());
  locator.registerLazySingleton(() => PostFeedDetailsService());
}
