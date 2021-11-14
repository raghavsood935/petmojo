import 'package:flutter/cupertino.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/String.dart';

class CreateGroupFirstViewModel extends BaseModel {
  TextEditingController groupNameTC = TextEditingController();

  List<String> _groupPrivacyValues = [select, "Public", "Private"];

  String _groupPrivacy = select;

  List<String> get groupPrivacyValues => _groupPrivacyValues;

  String get groupPrivacy => _groupPrivacy;

  void onGroupPrivacyChange(String? value) {
    _groupPrivacy = value!;
    notifyListeners();
  }
}
