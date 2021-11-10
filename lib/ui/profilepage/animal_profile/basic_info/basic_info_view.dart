import 'package:flutter/material.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/general_info/general_info_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/edit_button.dart';

import 'preferences/preferences_view.dart';

class AnimalBasicInfo extends StatefulWidget {
  AnimalBasicInfo({Key? key}) : super(key: key);

  List<Widget> _tabs = [GeneralInfoView(), PreferencesView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "General Info",
    ),
    Tab(
      text: "Preferences",
    )
  ];

  @override
  _AnimalBasicInfoState createState() => _AnimalBasicInfoState();
}

class _AnimalBasicInfoState extends State<AnimalBasicInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colors.white,
          title: AppText.body2("Basic Info"),
          centerTitle: true,
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: EditButton(),
              ),
              onTap: () {},
            )
          ],
          bottom: TabBar(
            tabs: widget._tabsTitle,
          ),
        ),
        body: TabBarView(
          children: widget._tabs,
        ),
      ),
    );
  }
}
