import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'community_start_banner_view_model.dart';

class CommunityStartBannerView extends StatelessWidget {
  const CommunityStartBannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunityStartBannerViewModel>.reactive(
      viewModelBuilder: () => CommunityStartBannerViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  communityBannerImgPath,
                  height: screenWidthPercentage(context, percentage: 0.85),
                  width: screenWidthPercentage(context, percentage: 0.85),
                ),
                verticalSpaceSmall,
                AppText.headingThree(
                  communityTitle,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                AppText.body(
                  communityDescription,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                MainButtonWidget(
                  onMainButtonTapped: model.goToCommunityChooseInterestsView,
                  mainButtonTitle: "GET STARTED",
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.goToCommunityMainView,
        ),
      ),
    );
  }
}
