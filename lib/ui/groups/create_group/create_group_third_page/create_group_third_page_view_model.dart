import 'package:flutter/cupertino.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CreateGroupThirdViewModel extends BaseModel {
  TextEditingController seachTC = TextEditingController();
  List _result = [];

  onSearchChange(String value) {}

  List get result => _result;

  dummyStart() {
    for (int i = 0; i < 15; i++) {
      _result.add(ResultModel());
    }
  }
}

class ResultModel {
  String _profilename = "Profile Name";
  String _username = "User Name";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8l2E7M4RC-BBOCI6Nqf9Odv3162QkA6YfSQ&unsqp=CAU";
  bool _isInvited = false;

  String get profilename => _profilename;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  bool get isInvited => _isInvited;
}
