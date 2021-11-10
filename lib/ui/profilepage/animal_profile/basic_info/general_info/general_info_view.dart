import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/general_info/general_info_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class GeneralInfoView extends StatelessWidget {
  const GeneralInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GeneralInfoViewModel>.reactive(
      viewModelBuilder: () => GeneralInfoViewModel(),
      builder: (context, model, child) => ListView(
        children: [
          detailsRowItem("Name", model.name),
          detailsRowItem("Animal Type", model.animalType),
          detailsRowItem("Gender", model.gender),
          detailsRowItem("Service Pet", model.servicePet),
          detailsRowItem("Spayed", model.sprayed),
          detailsRowItem("Breed", model.breed),
          detailsRowItem("Age/Date of birth", model.age),
          spacedDividerBigTiny,
          Wrap(
            children: [
              Visibility(
                visible: model.isUpForAdoption,
                child: roundedText(upForAdoption),
              ),
              Visibility(
                visible: model.isUpForMating,
                child: roundedText(upForMating),
              ),
              Visibility(
                visible: model.isUpForPlayBuddies,
                child: roundedText(upForPlayBuddies),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget roundedText(String text) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(
        color: colors.primary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(25),
    ),
    child: AppText.body1(
      "I am $text",
      color: colors.black,
    ),
  );
}

Widget detailsRowItem(String type, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      children: [
        Expanded(
          child: AppText.body(
            type,
            color: colors.black,
          ),
        ),
        Expanded(
          child: AppText.body(
            value,
          ),
        ),
      ],
    ),
  );
}
