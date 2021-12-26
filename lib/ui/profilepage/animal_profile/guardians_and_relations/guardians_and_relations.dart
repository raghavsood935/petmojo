import 'package:flutter/material.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/guardians/guardians_view.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/realted_animals_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class GuardiansAndRelatedAnimalsView extends StatefulWidget {
  GuardiansAndRelatedAnimalsView(
      {Key? key, required this.petID, required this.petToken})
      : super(key: key);

  String petID;
  String petToken;

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
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            GuardiansView(
              petID: widget.petID,
              petToken: widget.petToken,
            ),
            RelatedAnimalsView(
              petID: widget.petID,
              petToken: widget.petToken,
            )
          ],
        ),
      ),
    );
  }
}
