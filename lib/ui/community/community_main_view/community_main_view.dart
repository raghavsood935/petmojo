import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

import 'community_main_view_model.dart';

class CommunityMainView extends StatelessWidget {
  const CommunityMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunityMainViewModel>.reactive(
      viewModelBuilder: () => CommunityMainViewModel(),
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  AppText.caption(model.location),
                ],
              ),
            ),
            spacedDividerTiny,
            joinTamelyGroupWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: AppText.body("Social center"),
            ),
            spacedDividerTiny,
          ],
        ),
      ),
    );
  }
}

Widget joinTamelyGroupWidget() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration: BoxDecoration(
      color: colors.mediumBackgroundColor,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body(tamelyGrp),
              AppText.caption(
                tamelyGrpDescription,
                // isSingleLined: true,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset(
            groupOfPeoplesImgPath,
            height: 75,
            width: 75,
          ),
        ),
        Expanded(
          flex: 1,
          child: CircleAvatar(
            child: Icon(
              Icons.arrow_forward_rounded,
              color: colors.white,
            ),
            backgroundColor: colors.primary,
          ),
        ),
      ],
    ),
  );
}
