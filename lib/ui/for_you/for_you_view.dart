import 'package:flutter/material.dart';
import 'package:kubelite/ui/for_you/for_you_view_model.dart';
import 'package:stacked/stacked.dart';

class ForYouView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const ForYouView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForYouViewModel>.reactive(
      viewModelBuilder: () => ForYouViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: model.tabsTitle,
          ),
          body: TabBarView(
            children: model.tabs,
          ),
        ),
      ),
    );
  }
}
