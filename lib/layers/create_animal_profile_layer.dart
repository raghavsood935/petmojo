import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';

class CreateAnimalProfileLayer extends StatelessWidget {
  CreateAnimalProfileLayer({
    Key? key,
    required this.nameTF,
    required this.usernameTF,
    required this.shortBioTF,
    required this.animalTypeDDM,
    required this.animalBreedDDM,
    required this.genderDDM,
    required this.dobTF,
    required this.ageChooseOptnDDM,
    required this.type,
  }) : super(key: key);

  //TF = Text Field, DDM = Drop Down Menu
  Widget nameTF,
      usernameTF,
      shortBioTF,
      animalTypeDDM,
      genderDDM,
      animalBreedDDM,
      dobTF,
      ageChooseOptnDDM;

  String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: nameTF),
            verticalSpaceRegular,
            Expanded(child: usernameTF),
          ],
        ),
        verticalSpaceRegular,
        shortBioTF,
        verticalSpaceRegular,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: animalTypeDDM),
            verticalSpaceRegular,
            Expanded(child: genderDDM),
          ],
        ),
        verticalSpaceRegular,
        animalBreedDDM,
        verticalSpaceRegular,
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            horizontalSpaceSmall,
            AppText.body1(
              "Age of $type",
              color: colors.black,
            ),
            AppText.body1("(Choose DOB or baby/adult/young)"),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: dobTF),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppText.body(
                "OR",
                color: colors.primary,
              ),
            ),
            Expanded(child: ageChooseOptnDDM)
          ],
        )
      ],
    );
  }
}
