import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/preferences/preferences_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/edit_button.dart';

class PreferencesView extends StatefulWidget {
  PreferencesView(
      {Key? key,
      required this.petId,
      required this.petToken,
      required this.isEditable})
      : super(key: key);

  String petId;
  String petToken;
  bool isEditable;

  @override
  _PreferencesViewState createState() => _PreferencesViewState();
}

class _PreferencesViewState extends State<PreferencesView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PreferencesViewModel>.reactive(
      viewModelBuilder: () => PreferencesViewModel(),
      onModelReady: (model) => model
          .onInit(widget.petId, widget.petToken)
          .whenComplete(() => setState(() {})),
      builder: (context, model, child) => ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: AppText.body1(friendlinessHumanRating),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: model.totalRate
                    .map(
                      (i) => item(
                        i,
                        model.humanRateSelected[i - 1],
                        model,
                        0,
                        widget.isEditable,
                      ),
                    )
                    .toList(),
              ),
            ),
            // trailing: saveWithLoading(
            //   GestureDetector(
            //     child: AppText.body1(
            //       "Save",
            //       color: colors.primary,
            //     ),
            //     onTap: () => model.friendlinessWithHumansChangeSave(),
            //   ),
            //   model.withHumanChanged,
            //   model.withHumanLoading,
            // ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: AppText.body1(friendlinessAnimalRating),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: model.totalRate
                    .map(
                      (i) => item(
                        i,
                        model.animalRateSelected[i - 1],
                        model,
                        1,
                        widget.isEditable,
                      ),
                    )
                    .toList(),
              ),
            ),
            // CustomRateView(
            //     initialRate: model.friendlinessWithAnimals,
            //     onRateChange: model.friendlinessWithAnimalChange),
            // trailing: saveWithLoading(
            //   GestureDetector(
            //     child: AppText.body1(
            //       "Save",
            //       color: colors.primary,
            //     ),
            //     onTap: () => model.friendlinessWithAnimalChangeSave(),
            //   ),
            //   model.withAnimalsChanged,
            //   model.withAnimalsLoading,
            // ),
          ),
          spacedDividerBigTiny,
          detailsWidget(
            favourite,
            model.favourite,
            GestureDetector(
              child: model.favourite.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditFavourite,
            ),
            widget.isEditable,
          ),
          detailsWidget(
            thingsDislike,
            model.thingsDislike,
            GestureDetector(
              child: model.thingsDislike.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditThingsDislike,
            ),
            widget.isEditable,
          ),
          detailsWidget(
            unique,
            model.uniqueHabits,
            GestureDetector(
              child: model.uniqueHabits.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditUniqueHabits,
            ),
            widget.isEditable,
          ),
          detailsWidget(
            eating,
            model.eatingHabit,
            GestureDetector(
              child: model.eatingHabit.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditEatingHabits,
            ),
            widget.isEditable,
          ),
        ],
      ),
    );
  }
}

Widget add() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.add, color: colors.primary, size: 15),
        AppText.caption(
          "Add",
          color: colors.primary,
        ),
      ],
    );

Widget saveWithLoading(Widget widget, bool isChanged, bool isLoading) {
  return isChanged
      ? isLoading
          ? Transform.scale(
              scale: 0.5,
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            )
          : widget
      : SizedBox();
}

Widget detailsWidget(
    String title, String description, Widget trailing, bool isEditable) {
  return Column(
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 5,
                right: 10,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppText.body1(
                      title,
                      textAlign: TextAlign.start,
                      color: colors.black,
                    ),
                  ),
                  verticalSpaceTiny,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Visibility(
                      visible: description.isNotEmpty,
                      child: AppText.caption(
                        description,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Visibility(visible: isEditable, child: trailing),
          ),
        ],
      ),
      spacedDividerTiny,
    ],
  );
}

Widget item(int position, bool selected, PreferencesViewModel model, int type,
    bool isEditable) {
  //0 means humans
  //1 means animals
  return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: selected ? colors.primary : colors.kcLightGreyColor,
              ),
              child: Center(
                child: AppText.body1(
                  position.toString(),
                  color: selected ? colors.white : colors.black,
                ),
              ),
            ),
            Visibility(
              visible: position == 1,
              child: AppText.caption("Least"),
            ),
            Visibility(
              visible: position == 5,
              child: AppText.caption("Most"),
            ),
            Visibility(
              visible: position != 5 && position != 1,
              child: AppText.caption("  "),
            ),
          ],
        ),
      ),
      onTap: () => isEditable
          ? {
              if (type == 0)
                {model.onHumanRankSelected(position - 1, true)}
              else if (type == 1)
                {model.onAnimalRankSelected(position - 1, true)}
            }
          : {});
}
