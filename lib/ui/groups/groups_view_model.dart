import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/groups/invitations/invitations_view.dart';
import 'package:tamely/ui/groups/my_groups/my_groups_tab_view.dart';

class GroupsViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();

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

  back() {
    _navigationService.back();
  }

  createGroup() {
    _navigationService.navigateTo(Routes.createGroupView);
  }

  searchGroup() {}
}
