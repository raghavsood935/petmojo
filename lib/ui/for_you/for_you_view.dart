import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/for_you/for_you_view_model.dart';
import 'package:tamely/ui/for_you/tabs/for_you_tab.dart';
import 'package:tamely/ui/for_you/tabs/hall_of_fame_tab.dart';

import '../../widgets/live_ongoing_widget.dart';

class ForYouView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const ForYouView({
    Key? key,
    required this.menuScreenContext,
    required this.onScreenHideButtonPressed,
    this.hideStatus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForYouViewModel>.reactive(
      viewModelBuilder: () => ForYouViewModel(),
      onModelReady: (model)=>model.getSessionTracker(),
      // builder: (context, model, child) => Scaffold(
      //   body: Center(
      //     child: AppText.body1Bold(
      //       "This page is under development",
      //       color: colors.primary,
      //     ),
      //   ),
      // ),
      builder: (context, model, child) => Column(
        children: [


          DefaultTabController(
            length: 2,
            child: Flexible(
              child: Scaffold(
                appBar: TabBar(
                  tabs: model.tabsTitle,
                ),
                body: TabBarView(
                  children: [ForYouTab(), HallOfFameTab()],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
