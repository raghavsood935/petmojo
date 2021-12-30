import 'package:flutter/cupertino.dart';

import 'package:tamely/shared/base_viewmodel.dart';

class BlogSerachViewModel extends BaseModel {
  TextEditingController _searchTC = TextEditingController();

  TextEditingController get searchTC => _searchTC;

  void clearSearchText() {
    _searchTC.clear();
  }

  onSearchChange(String value) async {}
}
