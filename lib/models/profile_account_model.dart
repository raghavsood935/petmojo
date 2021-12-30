class AccountProfileModel {
  String _profilename = "Profile Name";
  String _username = "User Name";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8l2E7M4RC-BBOCI6Nqf9Odv3162QkA6YfSQ&unsqp=CAU";

  String _relation = "Friend";

  bool _requested = false;

  String get profilename => _profilename;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  bool get requested => _requested;

  String get relation => _relation;

  void setRelation(String? value) {
    _relation = value!;
  }
}
