class FeedPostCommentModel {
  String _username = "Sambit Mallick";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String _description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo , Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo";

  bool _isLiked = false;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  bool get isLiked => _isLiked;

  String get description => _description;
}
