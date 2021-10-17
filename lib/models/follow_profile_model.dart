class FollowProfileModel {
  String _profilename = "Profile Name";
  String _username = "User Name";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8l2E7M4RC-BBOCI6Nqf9Odv3162QkA6YfSQ&unsqp=CAU";

  List<String> _listOfPost = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZfzuK3MzuuBesw00QZdr4i0qDG79vpm8ktA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://navs.org/wp-content/uploads/bb-plugin/cache/bunny-landscape.jpg",
  ];

  bool _isFollowing = false;

  String get profileName => this._profilename;
  String get userName => this._username;
  String get profileImgUrl => this._profileImgUrl;
  List<String> get listOfPost => this._listOfPost;
  bool get isFollowing => this._isFollowing;

  void chagneFollowingState() {
    this._isFollowing = !this.isFollowing;
  }
}
