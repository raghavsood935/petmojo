import 'package:flutter/cupertino.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class RelatedAnimalsViewModel extends BaseModel {
  TextEditingController _searchTC = TextEditingController();

  bool isSearchEmpty = true;

  List<AccountProfileModel> _listOfRelations = [];

  TextEditingController get searchTC => _searchTC;

  List<AccountProfileModel> get listOfRelations => _listOfRelations;

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
      _listOfRelations.add(AccountProfileModel());
    }
  }
}
