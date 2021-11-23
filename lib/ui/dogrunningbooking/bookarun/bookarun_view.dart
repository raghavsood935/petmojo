import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dogrunningbooking_viewmodel.dart';

class BookARunView extends ViewModelWidget<DogRunningBookingViewModel> {
  @override
  Widget build(BuildContext context, DogRunningBookingViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Head
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(bookARunLabel),
                  verticalSpaceSmall,
                  AppText.body1(
                    bookARunSubtitle,
                    color: colors.kcCaptionGreyColor,
                  ),
                  verticalSpaceTiny,
                ],
              ),
            ),
            spacedDividerSmall,
            verticalSpaceSmall,

            // Number of pets
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(noOfPetsLabel),
                  verticalSpaceSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio<NoOfRuns>(
                            value: NoOfRuns.One,
                            groupValue: model.selectedRun,
                            onChanged: (value) => model.selectRun(value),
                            activeColor: colors.primary,
                          ),
                          AppText.body1("1"),
                        ],
                      ),
                      horizontalSpaceRegular,
                      Row(
                        children: [
                          Radio<NoOfRuns>(
                            value: NoOfRuns.Two,
                            groupValue: model.selectedRun,
                            onChanged: (value) => model.selectRun(value),
                            activeColor: colors.primary,
                          ),
                          AppText.body1("2"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            spacedDividerSmall,
            verticalSpaceSmall,

            // Choose pet & Pet Size
            // One
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body1(choosePetLabel),
                      Container(
                        width: 140,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: model.selectedDogOne,
                          hint: Text(model.dogsOwned[0]),
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 1,
                            color: colors.kcCaptionGreyColor,
                          ),
                          onChanged: model.selectDogOne,
                          items: model.dogsOwned
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body1(choosePetLabel),
                      Container(
                        width: 140,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: model.selectedSizeOne,
                          hint: Text(model.petSize[0]),
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 14,
                          style: const TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 1,
                            color: colors.kcCaptionGreyColor,
                          ),
                          onChanged: model.selectSizeOne,
                          items: model.petSize
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Two
            model.noOfDogs == 2 ? verticalSpaceRegular : Container(),
            model.noOfDogs == 2
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.body1(choosePetLabel),
                            Container(
                              width: 140,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: model.selectedDogTwo,
                                hint: Text(model.dogsOwned[0]),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 14,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 1,
                                  color: colors.kcCaptionGreyColor,
                                ),
                                onChanged: model.selectDogTwo,
                                items: model.dogsOwned
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.body1(choosePetLabel),
                            Container(
                              width: 140,
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: model.selectedSizeTwo,
                                hint: Text(model.petSize[0]),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 14,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 1,
                                  color: colors.kcCaptionGreyColor,
                                ),
                                onChanged: model.selectSizeTwo,
                                items: model.petSize
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(),
            verticalSpaceMedium,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            // Special Instructions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        specialInstructionsLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: specialInstructionsHint,
                    controller: model.specialInstructionsController,
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            // Behaviours
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(detailTitle),
                  verticalSpaceSmall,
                  BehavioursItem(
                    behaviour: detailOne,
                    selected: model.selectedDetailOne,
                    onTapped: model.setSelectedDetail1,
                  ),
                  BehavioursItem(
                    behaviour: detailTwo,
                    selected: model.selectedDetailTwo,
                    onTapped: model.setSelectedDetail2,
                  ),
                  BehavioursItem(
                    behaviour: detailThree,
                    selected: model.selectedDetailThree,
                    onTapped: model.setSelectedDetail3,
                  ),
                  BehavioursItem(
                    behaviour: detailFour,
                    selected: model.selectedDetailFour,
                    onTapped: model.setSelectedDetail4,
                  ),
                  BehavioursItem(
                    behaviour: detailFive,
                    selected: model.selectedDetailFive,
                    onTapped: model.setSelectedDetail5,
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,
            verticalSpaceMedium,
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}

class BehavioursItem extends StatelessWidget {
  const BehavioursItem({Key? key, this.behaviour, this.selected, this.onTapped})
      : super(key: key);
  final String? behaviour;
  final bool? selected;
  final void Function(bool?)? onTapped;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> activeStates = <MaterialState>{
        MaterialState.selected,
      };
      if (states.any(activeStates.contains)) {
        return colors.primary;
      }
      return colors.kcLightGreyColor;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: AppText.body1(behaviour!)),
        horizontalSpaceTiny,
        Checkbox(
          value: selected,
          onChanged: onTapped,
          checkColor: colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
        ),
      ],
    );
  }
}
