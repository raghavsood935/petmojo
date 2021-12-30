import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/stray_profile_list_tile.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/list_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/dropdown_detail_layout.dart';
import 'package:tamely/widgets/guardian_list_tile.dart';
import 'package:tamely/widgets/list_fillter_widget.dart';
import 'package:tamely/widgets/search_text_field.dart';

class StraysNearYouView extends StatefulWidget {
  const StraysNearYouView({Key? key}) : super(key: key);

  @override
  _StraysNearYouViewState createState() => _StraysNearYouViewState();
}

class _StraysNearYouViewState extends State<StraysNearYouView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StraysNearYouViewModel>.reactive(
      viewModelBuilder: () => StraysNearYouViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => DropDownDetailsLayers(
        title: strayTitle,
        subTitle: straySubTitle,
        description: strayDescription,
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
              Expanded(
                flex: 1,
                child: Visibility(
                  visible: model.isDefaultLocation,
                  child: AppText.body1(
                    "Change",
                    color: colors.primary,
                  ),
                ),
              )
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
              listOfItems: animalFilters,
              onChange: model.onFilterChange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AppText.body1("Discover strays near you"),
          ),
          ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => StrayAnimalProfileTile(
                profile: model.listOfStaryAnimals[index]),
            separatorBuilder: (context, index) => (index + 1) % 3 != 0 ||
                    index == 0
                ? spacedDividerTiny
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      spacedDividerBigTiny,
                      verticalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: AppText.body1Bold(
                            "Discover stray guardians near you"),
                      ),
                      verticalSpaceRegular,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 125,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: model.listOfGuarduians.length,
                            itemBuilder: (context, index) => GuardiansListTile(
                              guardiansProfile: model.listOfGuarduians[index],
                            ),
                          ),
                        ),
                      ),
                      verticalSpaceTiny,
                      spacedDividerBigTiny,
                    ],
                  ),
            itemCount: model.listOfStaryAnimals.length,
          ),
        ],
      ),
    );
  }
}
