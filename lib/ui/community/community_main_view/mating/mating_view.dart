import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/community/community_main_view/mating/mating_profile_list_tile.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/list_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/dropdown_detail_layout.dart';
import 'package:tamely/widgets/list_fillter_widget.dart';
import 'package:tamely/widgets/rounded_text.dart';
import 'package:tamely/widgets/search_text_field.dart';

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
        innerWidgets: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(Icons.location_on_outlined),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: AppText.caption(
                    model.location,
                    isSingleLined: true,
                  ),
                ),
              ),
            ],
          ),
          spacedDividerTiny,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SearchTextField(
              controller: model.searchTC,
              onChange: model.onSearchChange,
              hint: "Search for strays",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FilterListWidget(
              value: model.listFilterValue,
              listOfItems: playBuddiesFilters,
              onChange: model.onFilterChange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AppText.body1Bold("Newest addition"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 125,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: model.listOfGuarduians.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            CustomCircularAvatar(
                              radius: 25,
                              imgPath:
                                  model.listOfStaryAnimals[index].profileImgUrl,
                            ),
                            verticalSpaceSmall,
                            AppText.caption(
                              model.listOfStaryAnimals[index].name,
                              color: colors.black,
                            ),
                            verticalSpaceSmall,
                            RoundedDecoratedText(value: "7 km"),
                          ],
                        ),
                      )),
            ),
          ),
          spacedDividerBigTiny,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AppText.body1Bold("Discover animals up for mating"),
          ),
          ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                MatingProfileTile(profile: model.listOfStaryAnimals[index]),
            separatorBuilder: (context, index) => spacedDividerTiny,
            itemCount: model.listOfStaryAnimals.length,
          ),
        ],
      ),
    );
  }
}
