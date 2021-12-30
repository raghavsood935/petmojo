import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/ui/community/community_view_model.dart';
import 'package:tamely/ui/community/first_time_views/community_start_banner/community_start_banner_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class CommunityView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const CommunityView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunityViewModel>.reactive(
      viewModelBuilder: () => CommunityViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        // body: model.isFirstTime
        //     ? CommunityStartBannerView()
        //     : CommunityMainView(),

        body: Center(
          child: AppText.body1Bold(
            "This page is under development",
            color: colors.primary,
          ),
        ),
      ),
    );
  }
}
