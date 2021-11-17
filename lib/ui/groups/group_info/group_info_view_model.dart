import 'package:tamely/shared/base_viewmodel.dart';

class GroupInfoViewModel extends BaseModel {
  String _myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";

  String _groupName = "Cat Vibes Only";
  String _coverImgurl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";
  String _membersCount = "874k";
  String _groupDescription =
      "How often are you home? If you work long hours, a dog may not be a good choice of guyzn";
  bool _isPrivate = false;

  String get myProfileImg => _myProfileImg;

  String get groupName => _groupName;

  String get coverImgurl => _coverImgurl;

  String get membersCount => _membersCount;

  String get groupDescription => _groupDescription;

  bool get isPrivate => _isPrivate;
}
