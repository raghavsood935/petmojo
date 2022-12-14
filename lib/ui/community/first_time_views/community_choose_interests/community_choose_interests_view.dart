import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/community/first_time_views/community_choose_interests/animal_item.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'community_choose_interests_view_model.dart';

class CommunityChooseInterestView extends StatefulWidget {
  const CommunityChooseInterestView({Key? key}) : super(key: key);

  @override
  _CommunityChooseInterestViewState createState() =>
      _CommunityChooseInterestViewState();
}

class _CommunityChooseInterestViewState
    extends State<CommunityChooseInterestView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunityChooseInterestViewModel>.reactive(
      viewModelBuilder: () => CommunityChooseInterestViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: AppText.body("Choose your interests"),
          centerTitle: true,
          backgroundColor: colors.white,
        ),
        bottomSheet: MainButtonWidget(
          onMainButtonTapped: model.goToCommunityMainPage,
          mainButtonTitle: "DONE",
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 15,
            bottom: 75,
            right: 10,
            left: 10,
          ),
          child: StaggeredGridView.countBuilder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: model.listOfAnimals.length,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            itemBuilder: (context, index) =>
                AnimalItem(animal: model.listOfAnimals[index]),
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ),
      ),
    );
  }
}
