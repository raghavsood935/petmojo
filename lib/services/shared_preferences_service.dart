import 'package:kubelite/enum/redirect_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  late SharedPreferences _preferences;

  Future initialise() async {
    print("SharedPref initialise");
    _preferences = await SharedPreferences.getInstance();
  }

  static const String HAS_USER = 'hasUser';
  static const String UID = 'uid';
  static const String BUYER_ID = 'buyerId';
  static const String BUYER_STORE_ID = 'buyerStoreId';
  static const String BUSINESS_NAME = 'businessName';
  static const String SELLER_ID = 'sellerId';
  static const String CURRENT_LAT = 'currentPositionLatitude';
  static const String CURRENT_LON = 'currentPositionLongitude';
  static const String FCM_TOKEN = 'fcmToken';
  static const String AUTH_TOKEN = 'authToken';
  static const String HOME_VISIBLE = 'homeVisible';
  static const String YOUR_FIELD = 'yourField';
  static const String CART_TOTAL_ITEMS = 'cartTotalItems';
  static const String PHONE_NUMBER = 'phonenumber';
  static const String CURRENT_STATE = 'currentState';

  //current address
  double locationRadius = 500;

  // updated _saveToDisk function that handles all types
  void _saveToDisk<T>(String key, T content) {
    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }

  dynamic _getFromDisk(String key) {
    var value = _preferences.get(key);
    return value;
  }

  Future<void> clearLoginData() async {
    await _preferences.remove(UID);
    await _preferences.remove(HAS_USER);
    await _preferences.remove(BUYER_ID);
    await _preferences.remove(BUYER_STORE_ID);
    await _preferences.remove(BUSINESS_NAME);
    await _preferences.remove(SELLER_ID);
    await _preferences.remove(CURRENT_STATE);
    await _preferences.clear();
  }

  String get fcmToken => _getFromDisk(FCM_TOKEN) ?? null;

  set fcmToken(String value) => _saveToDisk(FCM_TOKEN, value);

  String get authToken => _getFromDisk(AUTH_TOKEN) ?? null;

  set authToken(String value) => _saveToDisk(AUTH_TOKEN, value);

  String get businessName => _getFromDisk(BUSINESS_NAME) ?? "Mittal Baker";

  set businessName(String value) => _saveToDisk(BUSINESS_NAME, value);

  bool get homeVisible => _getFromDisk(HOME_VISIBLE) ?? false;

  set homeVisible(bool value) => _saveToDisk(HOME_VISIBLE, value);

  bool get hasUser => _getFromDisk(HAS_USER) ?? false;

  set hasUser(bool value) => _saveToDisk(HAS_USER, value);

  int get yourField => _getFromDisk(YOUR_FIELD) ?? 0;

  set yourField(int value) => _saveToDisk(YOUR_FIELD, value);

  String get phoneNumber => _getFromDisk(PHONE_NUMBER) ?? "";

  set phoneNumber(String value) => _saveToDisk(PHONE_NUMBER, value);

  String get currentState =>
      _getFromDisk(CURRENT_STATE) ?? getRedirectStateName(RedirectState.Start);

  set currentState(String value) => _saveToDisk(CURRENT_STATE, value);
}
