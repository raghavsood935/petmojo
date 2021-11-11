// Mocks generated by Mockito 5.0.9 from annotations
// in stacked_themes/test/test_setup.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:ui' as _i6;

import 'package:flutter/src/material/app.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_themes/src/services/platform_service.dart' as _i7;
import 'package:stacked_themes/src/services/shared_preferences_service.dart'
    as _i2;
import 'package:stacked_themes/src/services/statusbar_service.dart' as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [SharedPreferencesService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferencesService extends _i1.Mock
    implements _i2.SharedPreferencesService {
  @override
  set themeIndex(int? value) =>
      super.noSuchMethod(Invocation.setter(#themeIndex, value),
          returnValueForMissingStub: null);
  @override
  set userThemeMode(_i3.ThemeMode? value) =>
      super.noSuchMethod(Invocation.setter(#userThemeMode, value),
          returnValueForMissingStub: null);
  @override
  void clearPreferences() =>
      super.noSuchMethod(Invocation.method(#clearPreferences, []),
          returnValueForMissingStub: null);
}

/// A class which mocks [StatusBarService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStatusBarService extends _i1.Mock implements _i4.StatusBarService {
  @override
  _i5.Future<dynamic>? updateStatusBarColor(_i6.Color? statusBarColor) =>
      (super.noSuchMethod(
              Invocation.method(#updateStatusBarColor, [statusBarColor]))
          as _i5.Future<dynamic>?);
}

/// A class which mocks [PlatformService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlatformService extends _i1.Mock implements _i7.PlatformService {
  @override
  bool get isIos =>
      (super.noSuchMethod(Invocation.getter(#isIos), returnValue: false)
          as bool);
  @override
  bool get isAndroid =>
      (super.noSuchMethod(Invocation.getter(#isAndroid), returnValue: false)
          as bool);
  @override
  bool get isMobilePlatform =>
      (super.noSuchMethod(Invocation.getter(#isMobilePlatform),
          returnValue: false) as bool);
}
