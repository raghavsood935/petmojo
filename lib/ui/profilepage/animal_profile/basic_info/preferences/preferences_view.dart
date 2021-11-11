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
  const PreferencesView({Key? key}) : super(key: key);

  @override
  _PreferencesViewState createState() => _PreferencesViewState();
}

class _PreferencesViewState extends State<PreferencesView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PreferencesViewModel>.reactive(
      viewModelBuilder: () => PreferencesViewModel(),
      builder: (context, model, child) => ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: AppText.body1(friendlinessHumanRating),
          ),
          CustomRateView(onRateChange: model.friendlinessWithHumanChange),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: AppText.body1(friendlinessAnimalRating),
          ),
          CustomRateView(onRateChange: model.friendlinessWithAnimalChange),
          spacedDividerBigTiny,
          ListTile(
            title: AppText.body1(favourite),
            subtitle: AppText.caption(model.favourite),
            trailing: GestureDetector(
              child: model.favourite.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditFavourite,
            ),
          ),
          spacedDividerTiny,
          ListTile(
            title: AppText.body1(thingsDislike),
            subtitle: AppText.caption(model.thingsDislike),
            trailing: GestureDetector(
              child: model.thingsDislike.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditThingsDislike,
            ),
          ),
          spacedDividerTiny,
          ListTile(
            title: AppText.body1(unique),
            subtitle: AppText.caption(model.uniqueHabits),
            trailing: GestureDetector(
              child: model.uniqueHabits.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditUniqueHabits,
            ),
          ),
          spacedDividerTiny,
          ListTile(
            title: AppText.body1(eating),
            subtitle: AppText.caption(model.eatingHabit),
            trailing: GestureDetector(
              child: model.eatingHabit.isEmpty ? add() : EditButton.small(),
              onTap: model.showEditEatingHabits,
            ),
          ),
          spacedDividerTiny,
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
