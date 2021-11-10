import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/account_search_tab_view.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/all_search_tab_view.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/hashtags_search_tab_view.dart';
import 'package:tamely/ui/groups/invitations/invitations_view.dart';
import 'package:tamely/ui/groups/my_groups/my_groups_tab_view.dart';

class GroupsViewModel extends BaseModel {
  List<Widget> _tabs = [
    MyGroupsTabView(),
    InvitationsTabView(),
  ];

  List<Tab> _tabTitles = [
    Tab(
      text: "My Groups",
    ),
    Tab(
      text: "Invitations",
    ),
  ];

  List<Widget> get tabs => _tabs;

  List<Tab> get tabTitles => _tabTitles;

  createGroup() {}

  searchGroup() {}
}
