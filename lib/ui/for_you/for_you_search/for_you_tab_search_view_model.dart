import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/shared/base_viewmodel.dart';
import 'package:kubelite/ui/for_you/for_you_search/search_tabs/account_search_tab_view.dart';
import 'package:kubelite/ui/for_you/for_you_search/search_tabs/all_search_tab_view.dart';
import 'package:kubelite/ui/for_you/for_you_search/search_tabs/hashtags_search_tab_view.dart';

class ForYouTabSearchViewModel extends BaseModel {
  TextEditingController _searchTC = TextEditingController();

  List<Widget> _tabs = [
    AllSerachTabView(),
    AccountSearchTabView(),
    HashtagsSearchTabView(),
  ];

  List<Tab> _tabTitles = [
    Tab(
      text: "All",
    ),
    Tab(
      text: "Account",
    ),
    Tab(
      text: "Hashtags",
    ),
  ];

  TextEditingController get searchTC => _searchTC;

  List<Widget> get tabs => _tabs;

  List<Tab> get tabTitles => _tabTitles;

  void clearSearchText() {
    _searchTC.clear();
  }
}
