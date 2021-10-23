import 'package:flutter/cupertino.dart';
import 'package:kubelite/models/feed_post_model.dart';
import 'package:kubelite/models/my_tales_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';

class FeedViewModel extends BaseModel {
  TextEditingController _postTC = new TextEditingController();

  List<MyTalesModel> _dummyListOfTales = [
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
    MyTalesModel(),
  ];

  List<FeedPostModel> _dummyFeedPostModel = [
    FeedPostModel(false, false),
    FeedPostModel(true, true),
    FeedPostModel(true, false),
  ];

  String _myProfileImg =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU";
  String get myProfileImg => _myProfileImg;
  List<MyTalesModel> get dummyListOfTales => _dummyListOfTales;
  List<FeedPostModel> get dummyListOfFeedPost => _dummyFeedPostModel;

  TextEditingController get postTC => _postTC;
}
