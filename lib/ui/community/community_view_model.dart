import 'package:flutter/material.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CommunityViewModel extends BaseModel {
  final sharedPreference = locator<SharedPreferencesService>();

  bool _isFirstTime = true;

  bool get isFirstTime => _isFirstTime;

  void init() {
    _isFirstTime = sharedPreference.communityFirstTime;
    notifyListeners();
  }
}
