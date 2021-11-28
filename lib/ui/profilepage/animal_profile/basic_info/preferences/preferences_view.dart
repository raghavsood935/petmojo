import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/preferences/preferences_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_rate_widget.dart';
import 'package:tamely/widgets/edit_button.dart';

class PreferencesView extends StatefulWidget {
  PreferencesView({Key? key, required this.petId}) : super(key: key);

  String petId;

  @override
  _PreferencesViewState createState() => _PreferencesViewState();
}

class _PreferencesViewState extends State<PreferencesView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PreferencesViewModel>.reactive(
      viewModelBuilder: () => PreferencesViewModel(),
      onModelReady: (model) => model.onInit(widget.petId).whenComplete(()=>setState((){})),
      builder: (context, model, child) => ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: AppText.body1(friendlinessHumanRating),
            subtitle: CustomRateView(
              initialRate: model.friendlinessWithHumans,
              onRateChange: model.friendlinessWithHumanChange,
            ),
            trailing: saveWithLoading(
              GestureDetector(
                child: AppText.body1(
                  "Save",
                  color: colors.primary,
                ),
                onTap: () => model.friendlinessWithHumansChangeSave(),
              ),
              model.withHumanChanged,
              model.withHumanLoading,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: AppText.body1(friendlinessAnimalRating),
            subtitle: CustomRateView(
                initialRate: model.friendlinessWithAnimals,
                onRateChange: model.friendlinessWithAnimalChange),
            trailing: saveWithLoading(
              GestureDetector(
                child: AppText.body1(
                  "Save",
                  color: colors.primary,
                ),
                onTap: () => model.friendlinessWithAnimalChangeSave(),
              ),
              model.withAnimalsChanged,
              model.withAnimalsLoading,
            ),
          ),
          spacedDividerBigTiny,
          detailsWidget(
            favourite,
            model.favourite,
            GestureDetector(
              child: model.favourite.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditFavourite,
            ),
          ),
          detailsWidget(
            thingsDislike,
            model.thingsDislike,
            GestureDetector(
              child: model.thingsDislike.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditThingsDislike,
            ),
          ),
          detailsWidget(
            unique,
            model.uniqueHabits,
            GestureDetector(
              child: model.uniqueHabits.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditUniqueHabits,
            ),
          ),
          detailsWidget(
            eating,
            model.eatingHabit,
            GestureDetector(
              child: model.eatingHabit.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditEatingHabits,
            ),
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

Widget detailsWidget(String title, String description, Widget trailing) {
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
            child: trailing,
          ),
        ],
      ),
      spacedDividerTiny,
    ],
  );
}
