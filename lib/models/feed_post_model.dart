class FeedPostModel {
  FeedPostModel(this._isAnimalPost, this._isPrivate);

  String _username = "Sambit Mallick";
  String _animalProfileName = "Cat Vibes only";
  String _location = "Gurgaon,Haryana";
  String _uploadTime = "2 days ago";
  String _hastTag = "#petlover #animallover";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";

  String _animalProfileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";

  String _description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo , Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo";

  bool _isLiked = false;
  bool _isAnimalPost = false;
  bool _isPrivate = false;

  String _lastLikedPersonName = "Sambit,Rohan & 250 others";

  List<String> _postImgsList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU",
  ];

  List<String> _listOfComments = ["Comment 1", "Comment 2"];

  String get username => _username;

  String get location => _location;

  List<String> get postImgsList => _postImgsList;

  String get description => _description;

  String get profileImgUrl => _profileImgUrl;

  String get uploadTime => _uploadTime;

  bool get isLiked => _isLiked;

  String get lastLikedPersonName => _lastLikedPersonName;

  int get noOfComments => _listOfComments.length;

  bool get isPrivate => _isPrivate;

  bool get isAnimalPost => _isAnimalPost;

  String get animalProfileName => _animalProfileName;

  String get animalProfileImgUrl => _animalProfileImgUrl;

  String get hastTag => _hastTag;
}
