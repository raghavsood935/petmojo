import 'package:flutter/material.dart';
import 'package:kubelite/ui/community/community_main_view/community_main_view.dart';
import 'package:kubelite/ui/community/community_view_model.dart';
import 'package:kubelite/ui/community/first_time_views/community_start_banner/community_start_banner_view.dart';
import 'package:stacked/stacked.dart';

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
      builder: (context, model, child) => Scaffold(
        body: model.isFirstTime
            ? CommunityStartBannerView()
            : CommunityMainView(),
      ),
    );
  }
}
