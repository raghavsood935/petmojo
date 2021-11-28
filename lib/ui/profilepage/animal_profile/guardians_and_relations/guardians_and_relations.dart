import 'package:flutter/material.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/guardians/guardians_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/realted_animals_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class GuardiansAndRelatedAnimalsView extends StatefulWidget {
  GuardiansAndRelatedAnimalsView({Key? key}) : super(key: key);

  List<Widget> _tabs = [GuardiansView(), RelatedAnimalsView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "Guardians",
    ),
    Tab(
      text: "Related animals",
    )
  ];

  @override
  _GuardiansAndRelatedAnimalsViewState createState() =>
      _GuardiansAndRelatedAnimalsViewState();
}

class _GuardiansAndRelatedAnimalsViewState
    extends State<GuardiansAndRelatedAnimalsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colors.white,
          title: AppText.body2("Guardians & Relations"),
          centerTitle: true,
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
