import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/widgets/dropdown_detail_layout.dart';

import 'adoption_view_model.dart';

class AdoptionView extends StatefulWidget {
  const AdoptionView({Key? key}) : super(key: key);

  @override
  _AdoptionViewState createState() => _AdoptionViewState();
}

class _AdoptionViewState extends State<AdoptionView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdoptionViewModel>.reactive(
      viewModelBuilder: () => AdoptionViewModel(),
      builder: (context, model, child) => DropDownDetailsLayers(
        title: adoptionTitle,
        subTitle: adoptionSubTitle,
        description: adoptionDescription,
        innerWidgets: [],
      ),
    );
  }
}
