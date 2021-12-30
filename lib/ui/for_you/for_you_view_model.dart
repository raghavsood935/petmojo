import 'package:flutter/material.dart';
import 'package:tamely/shared/base_viewmodel.dart';

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
