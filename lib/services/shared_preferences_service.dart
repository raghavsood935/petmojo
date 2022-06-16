import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamely/enum/redirect_state.dart';
import 'package:tamely/models/application_models.dart';

class SharedPreferencesService {
  late SharedPreferences _preferences;

  Future initialise() async {
    print("SharedPref initialise");
    _preferences = await SharedPreferences.getInstance();
  }

  static const String HAS_USER = 'hasUser';
  static const String UID = 'uid';
  static const String USERNAME = 'username';
  static const String FULLNAME = 'fullName';
  static const String BIO = 'bio';
  static const String EMAIL = 'email';
  static const String WEBSITE = 'website';

  static const String CURRENT_LAT = 'currentPositionLatitude';
  static const String CURRENT_LON = 'currentPositionLongitude';
  static const String FCM_TOKEN = 'fcmToken';
  static const String AUTH_TOKEN = 'authToken';
  static const String HOME_VISIBLE = 'homeVisible';
  static const String YOUR_FIELD = 'yourField';
  static const String CART_TOTAL_ITEMS = 'cartTotalItems';
  static const String PHONE_NUMBER = 'phonenumber';
  static const String CURRENT_STATE = 'currentState';

  //community values
  static const String COMMUNITY_FIRST_TIME = 'communityFirstTime';
  static const String TRY_NOW_TRAINING = 'tryNowTraining';
  static const String TRY_NOW_WALKING = 'tryNowWalking';

  //current selected profile details
  static const String CURRENT_PROFILE_USERNAME = 'currentProfileUsername';
  static const String CURRENT_PROFILE_PROFILENAME = 'currentProfileProfilename';
  static const String CURRENT_PROFILE_PROFILE_IMG_URL =
      'currentProfileProfileImgUrl';
  static const String CURRENT_PROFILE_IS_HUMAN = 'currentProfileIsHuman';
  static const String CURRENT_PROFILE_PET_ID = 'currentProfilePetId';
  static const String CURRENT_PROFILE_PET_TOKEN = 'currentProfilePetToken';
  static const String CURRENT_PROFILE_USER_ID = 'currentProfileUserId';
  static const String CURRENT_PROFILE_CURRENT_INDEX =
      'currentProfileCurrentIndex';

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
    await _preferences.remove(CURRENT_STATE);
    await _preferences.remove(AUTH_TOKEN);
    await _preferences.clear();
  }

  Future<void> saveCurrentUser(LocalUser currentUser) async {
    uid = currentUser.id ?? "";
    username = currentUser.username ?? "";
    fullName = currentUser.fullName ?? "";
    bio = currentUser.bio ?? "";
    email = currentUser.email ?? "";
    website = currentUser.website ?? "";
  }

  LocalUser getCurrentUser() {
    return LocalUser(
        id: uid,
        email: email,
        username: username,
        fullName: fullName,
        bio: bio,
        website: website);
  }

  Future<void> saveCurrentProfile(CurrentProfile profile) async {
    _saveToDisk(CURRENT_PROFILE_USERNAME, profile.username);
    _saveToDisk(CURRENT_PROFILE_PROFILENAME, profile.profilename);
    _saveToDisk(CURRENT_PROFILE_PROFILE_IMG_URL, profile.profileImgUrl);
    _saveToDisk(CURRENT_PROFILE_IS_HUMAN, profile.isHuman);
    _saveToDisk(CURRENT_PROFILE_PET_ID, profile.petId);
    _saveToDisk(CURRENT_PROFILE_PET_TOKEN, profile.petToken);
    _saveToDisk(CURRENT_PROFILE_USER_ID, profile.userId);
    _saveToDisk(CURRENT_PROFILE_CURRENT_INDEX, profile.currentIndex);
    print("SAVED : ${profile.toString()}");
  }

  CurrentProfile getCurrentProfile() {
    return CurrentProfile(
      _getFromDisk(CURRENT_PROFILE_USERNAME),
      _getFromDisk(CURRENT_PROFILE_PROFILENAME),
      _getFromDisk(CURRENT_PROFILE_PROFILE_IMG_URL),
      _getFromDisk(CURRENT_PROFILE_IS_HUMAN),
      _getFromDisk(CURRENT_PROFILE_PET_ID),
      _getFromDisk(CURRENT_PROFILE_PET_TOKEN),
      _getFromDisk(CURRENT_PROFILE_USER_ID),
      _getFromDisk(CURRENT_PROFILE_CURRENT_INDEX),
    );
  }

  String get uid => _getFromDisk(UID) ?? null;

  set uid(String value) => _saveToDisk(UID, value);

  String get username => _getFromDisk(USERNAME) ?? null;

  set username(String value) => _saveToDisk(USERNAME, value);

  String get fullName => _getFromDisk(FULLNAME) ?? null;

  set fullName(String value) => _saveToDisk(FULLNAME, value);

  String get bio => _getFromDisk(BIO) ?? null;

  set bio(String value) => _saveToDisk(BIO, value);

  String get email => _getFromDisk(EMAIL) ?? null;

  set email(String value) => _saveToDisk(EMAIL, value);

  String get website => _getFromDisk(WEBSITE) ?? null;

  set website(String value) => _saveToDisk(WEBSITE, value);

  String get fcmToken => _getFromDisk(FCM_TOKEN) ?? null;

  set fcmToken(String value) => _saveToDisk(FCM_TOKEN, value);

  String get authToken => _getFromDisk(AUTH_TOKEN) ?? null;

  set authToken(String value) => _saveToDisk(AUTH_TOKEN, value);

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

  bool get communityFirstTime => _getFromDisk(COMMUNITY_FIRST_TIME) ?? true;
  bool get tryNowTraining => _getFromDisk(TRY_NOW_TRAINING) ?? true;
  bool get tryNowWalking => _getFromDisk(TRY_NOW_WALKING) ?? true;



  setCommunityFirstTime(bool value) => _saveToDisk(COMMUNITY_FIRST_TIME, value);
  setTryNowTraining(bool value) => _saveToDisk(TRY_NOW_TRAINING, value);
  setTryNowWalking(bool value) => _saveToDisk(TRY_NOW_WALKING, value);
}

class CurrentProfile {
  String username;
  String profilename;
  String profileImgUrl;
  int currentIndex;
  bool isHuman;
  String petId;
  String petToken;
  String userId;

  CurrentProfile(this.username, this.profilename, this.profileImgUrl,
      this.isHuman, this.petId, this.petToken, this.userId, this.currentIndex);
}
