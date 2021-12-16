import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/for_you/tabs/for_you_tab.dart';
import 'package:tamely/ui/for_you/tabs/hall_of_fame_tab.dart';

class ForYouViewModel extends BaseModel {
  // List<Widget> _tabs = [ForYouTab(), HallOfFameTab()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "For you",
    ),
    Tab(
      text: "Hall of Fame",
    )
  ];

  // List<Widget> get tabs => _tabs;

  List<Tab> get tabsTitle => _tabsTitle;
}
