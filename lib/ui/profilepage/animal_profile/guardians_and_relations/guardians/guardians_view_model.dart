import 'package:flutter/cupertino.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class GuardiansViewModel extends BaseModel {
  TextEditingController _searchTC = TextEditingController();

  bool isSearchEmpty = true;

  List<AccountProfileModel> _listOfGuardians = [];

  List<ResultGuardianProfileModel> _listOfResult = [];

  List<AccountProfileModel> get listOfGuardians => _listOfGuardians;

  List<ResultGuardianProfileModel> get listOfResult => _listOfResult;

  TextEditingController get searchTC => _searchTC;

  Future searchOnChange(String value) async {
    isSearchEmpty = value.isEmpty;
    notifyListeners();
  }

  Future searchCancel() async {
    _searchTC.clear();
    isSearchEmpty = false;
    notifyListeners();
  }

  Future dummyStart() async {
    for (int i = 0; i < 5; i++) {
      _listOfGuardians.add(AccountProfileModel());
      _listOfResult.add(ResultGuardianProfileModel());
    }
  }
}

class ResultGuardianProfileModel {
  String _profilename = "Profile Name";
  String _username = "User Name";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8l2E7M4RC-BBOCI6Nqf9Odv3162QkA6YfSQ&unsqp=CAU";
  bool _isRequested = false;

  String get profilename => _profilename;

  String get username => _username;

  String get profileImgUrl => _profileImgUrl;

  bool get isRequested => _isRequested;

  void onRequestedChange() {
    _isRequested = !_isRequested;
  }
}
