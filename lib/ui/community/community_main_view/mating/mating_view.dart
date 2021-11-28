import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/widgets/dropdown_detail_layout.dart';

import 'mating_view_model.dart';

class MatingView extends StatefulWidget {
  const MatingView({Key? key}) : super(key: key);

  @override
  _MatingViewState createState() => _MatingViewState();
}

class _MatingViewState extends State<MatingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MatingViewModel>.reactive(
      viewModelBuilder: () => MatingViewModel(),
      builder: (context, model, child) => DropDownDetailsLayers(
        title: matingTitle,
        subTitle: matingSubTitle,
        description: matingDescription,
        innerWidgets: [],
      ),
    );
  }
}
