import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/basic_info/general_info/general_info_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/edit_button.dart';

class GeneralInfoView extends StatelessWidget {
  GeneralInfoView(
      {Key? key, required this.animalModelResponse, required this.petToken})
      : super(key: key);
  MyAnimalModelResponse animalModelResponse;
  String petToken;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GeneralInfoViewModel>.reactive(
      viewModelBuilder: () => GeneralInfoViewModel(),
      onModelReady: (model) {
        model.setSomeDetails(animalModelResponse);
        model.getLocation(animalModelResponse.location ?? "");
      },
      builder: (context, model, child) => ListView(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: EditButton(),
              ),
              onTap: () => model.goToEdit(animalModelResponse.Id!, petToken),
            ),
          ),
          detailsRowItem("Name", animalModelResponse.name ?? "-"),
          detailsRowItem("Animal Type", animalModelResponse.animalType ?? "-"),
          detailsRowItem("Gender", model.gender),
          detailsRowItem("Breed", model.breed),
          detailsRowItem("Age/Date of birth", model.age),
          detailsRowItem("Service Pet", model.serviecPet),
          detailsRowItem("Spayed", model.spayed),
          spacedDividerBigTiny,
          Visibility(
              // visible: animalModelResponse.category! == "Stray",
              visible: false,
              child: detailsRowItem("Location", model.location)),
          Visibility(
              visible: animalModelResponse.category! == "Stray",
              child: spacedDividerBigTiny),
          Wrap(
            children: [
              Visibility(
                visible: animalModelResponse.adoption ?? false,
                child: roundedText(upForAdoption),
              ),
              Visibility(
                visible: animalModelResponse.mating ?? false,
                child: roundedText(upForMating),
              ),
              Visibility(
                visible: animalModelResponse.playBuddies ?? false,
                child: roundedText(
                    "up for PlayBuddies (${animalModelResponse.playFrom} - ${animalModelResponse.playTo})"),
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
