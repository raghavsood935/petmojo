import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/for_you/for_you_view_model.dart';
import 'package:tamely/ui/for_you/tabs/for_you_tab.dart';
import 'package:tamely/ui/for_you/tabs/hall_of_fame_tab.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

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

      // builder: (context, model, child) => Scaffold(
      //   body: Center(
      //     child: AppText.body1Bold(
      //       "This page is under development",
      //       color: colors.primary,
      //     ),
      //   ),
      // ),
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: model.tabsTitle,
          ),
          body: TabBarView(
            children: [ForYouTab(), HallOfFameTab()],
          ),
        ),
      ),
    );
  }
}
