import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamely/enum/dog_training_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dt_dogtrainingbooking_viewmodel.dart';

class DTBookARunView extends ViewModelWidget<DTDogTrainingBookingViewModel> {
  @override
  Widget build(BuildContext context, DTDogTrainingBookingViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,

            // Number of pets
            Column(
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
                    horizontalSpaceLarge,
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
            verticalSpaceTiny,

            // Choose pet
            Visibility(
              visible: model.hasPets,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceTiny,
                  AppText.body2(choosePetLabel),
                  verticalSpaceMedium,
                  Container(
                    height: 90,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.myPets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RunnerItems(
                          name: model.myPets[index].name,
                          imageUrl: model.myPets[index].imageUrl,
                          selected: model.myPets[index].selected,
                          onTapped: () => model.selectPet(index),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          horizontalSpaceRegular,
                    ),
                  ),
                  verticalSpaceMedium,
                ],
              ),
            ),
            spacedDividerTiny,
            verticalSpaceRegular,

            // plans
            AppText.body1(
              model.freeWalkAvailable
                  ? bookARunSubtitleWithFree
                  : bookATrainingSubtitle,
            ),
            verticalSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.freeWalkAvailable ? verticalSpaceMedium : Container(),
                model.freeWalkAvailable
                    ? FreePackageItem(
                        value: DogTrainingPackage.One,
                        selectedValue: model.selectedPlan,
                        onTaped: () => model.selectPlan(DogTrainingPackage.One),
                        title: freeTrainingTitle,
                        subtitleOne: freeTrainingSubtitleOne,
                        subtitleTwo: freeTrainingSubtitleTwo,
                        rateOld: freeTrainingRateOld,
                        rateNew: freeTrainingRateNew,
                        rateLabel: freeTrainingRateLabel,
                      )
                    : Container(),
                verticalSpaceMedium,
                PackageItem(
                  value: DogTrainingPackage.Two,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogTrainingPackage.Two),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogTrainingPackage.Two),
                  title: twoTrainingTitle,
                  subtitleOne: twoTrainingSubtitleOne,
                  subtitleTwo: twoTrainingSubtitleTwo,
                  rateOld: twoTrainingRateOld,
                  rateNew: twoTrainingRateNew,
                  rateLabel: twoTrainingRateLabel,
                  seeMoreList: [
                    twoTrainingSeeOne,
                    twoTrainingSeeTwo,
                    twoTrainingSeeThree,
                    twoTrainingSeeFour,
                    twoTrainingSeeFive,
                    twoTrainingSeeSix,
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogTrainingPackage.Three,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogTrainingPackage.Three),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogTrainingPackage.Three),
                  title: threeTrainingTitle,
                  subtitleOne: threeTrainingSubtitleOne,
                  subtitleTwo: threeTrainingSubtitleTwo,
                  rateOld: threeTrainingRateOld,
                  rateNew: threeTrainingRateNew,
                  rateLabel: threeTrainingRateLabel,
                  seeMoreList: [
                    threeTrainingSeeOne,
                    threeTrainingSeeTwo,
                    threeTrainingSeeThree,
                    threeTrainingSeeFour,
                    threeTrainingSeeFive,
                    threeTrainingSeeSix,
                    threeTrainingSeeSeven,
                    threeTrainingSeeEight,
                    threeTrainingSeeNine,
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogTrainingPackage.Four,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogTrainingPackage.Four),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogTrainingPackage.Four),
                  title: fourTrainingTitle,
                  subtitleOne: fourTrainingSubtitleOne,
                  subtitleTwo: fourTrainingSubtitleTwo,
                  rateOld: fourTrainingRateOld,
                  rateNew: fourTrainingRateNew,
                  rateLabel: fourTrainingRateLabel,
                  seeMoreList: [
                    fourTrainingSeeOne,
                    fourTrainingSeeTwo,
                    fourTrainingSeeThree,
                    fourTrainingSeeFour,
                    fourTrainingSeeFive,
                    fourTrainingSeeSix,
                    fourTrainingSeeSeven,
                    fourTrainingSeeEight,
                    fourTrainingSeeNine,
                    fourTrainingSeeTen,
                    fourTrainingSeeEleven,
                    fourTrainingSeeTwelve,
                    fourTrainingSeeThirteen,
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogTrainingPackage.Five,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogTrainingPackage.Five),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogTrainingPackage.Five),
                  title: fiveTrainingTitle,
                  subtitleOne: fiveTrainingSubtitleOne,
                  subtitleTwo: fiveTrainingSubtitleTwo,
                  rateOld: fiveTrainingRateOld,
                  rateNew: fiveTrainingRateNew,
                  rateLabel: fiveTrainingRateLabel,
                  seeMoreList: [
                    fiveTrainingSeeOne,
                    fiveTrainingSeeTwo,
                    fiveTrainingSeeThree,
                    fiveTrainingSeeFour,
                    fiveTrainingSeeFive,
                    fiveTrainingSeeSix,
                    fiveTrainingSeeSeven,
                    fiveTrainingSeeEight,
                    fiveTrainingSeeNine,
                    fiveTrainingSeeTen,
                    fiveTrainingSeeEleven,
                    fiveTrainingSeeTwelve,
                    fiveTrainingSeeThirteen,
                    fiveTrainingSeeFourteen,
                    fiveTrainingSeeFifteen,
                    fiveTrainingSeeSixteen,
                    fiveTrainingSeeSeventeen,
                  ],
                ),
              ],
            ),
            verticalSpaceMedium,

            // offers
            Visibility(
              visible: !model.isOfferValid && model.isOfferAvailable,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2("Offers Available!! 🎉🎉🎉🎁🎁🎁"),
                  verticalSpaceRegular,
                  AppInputField(
                    hint: "Enter Promo Code",
                    controller: model.promoCodeController,
                    onChanged: model.promoCodeValidation,
                    isBoxBorder: true,
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.body2(
                            "PAWSOMEOFFER",
                            color: colors.primary,
                          ),
                          AppText.body2("ADDITIONAL 10% OFF"),
                        ],
                      ),
                      GestureDetector(
                        onTap: model.useOfferOne,
                        child: AppText.body2(
                          "USE",
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                ],
              ),
            ),

            // Offer Done
            Visibility(
              visible: model.isOfferValid && model.isOfferAvailable,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2("Offers"),
                  verticalSpaceSmall,
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline_rounded,
                        color: colors.primary,
                      ),
                      horizontalSpaceSmall,
                      Row(
                        children: [
                          AppText.body2(
                            "Promo ",
                          ),
                          AppText.body2(
                            " ${model.promoCode} ",
                            color: colors.primary,
                          ),
                          AppText.body2(
                            " Applied",
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  Column(
                    children: [
                      AppText.body2("You saved"),
                      AppText.body2(
                        "INR ${model.savedAmount}",
                        color: colors.primary,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            verticalSpaceLarge,
            verticalSpaceLarge,
          ],
        ),
      ),
    );
  }
}

class FreePackageItem extends StatelessWidget {
  const FreePackageItem({
    Key? key,
    this.title,
    this.subtitleOne,
    this.subtitleTwo,
    this.rateLabel,
    this.value,
    this.selectedValue,
    this.onTaped,
    this.rateOld,
    this.rateNew,
    this.onSeeMoreTaped,
  }) : super(key: key);
  final String? title;
  final String? subtitleOne;
  final String? subtitleTwo;
  final String? rateOld;
  final String? rateNew;
  final String? rateLabel;
  final DogTrainingPackage? value;
  final DogTrainingPackage? selectedValue;
  final void Function()? onTaped;
  final void Function()? onSeeMoreTaped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        height: 100.0,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedValue == value ? colors.primary : colors.white,
          boxShadow: [
            BoxShadow(
              color: selectedValue == value
                  ? colors.white
                  : colors.kcCaptionGreyColor,
              blurRadius: 3.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                0, // Move to right 10  horizontally
                0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/free_session.png"),
            ),
            horizontalSpaceSmall,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(
                    title!,
                    color: selectedValue == value ? colors.white : colors.black,
                  ),
                  verticalSpaceTiny,
                  AppText.caption(
                    subtitleTwo!,
                    color: selectedValue == value
                        ? colors.white
                        : colors.kcCaptionGreyColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.body2(
                    rateNew!,
                    color:
                        selectedValue == value ? colors.white : colors.primary,
                  ),
                  verticalSpaceTiny,
                  AppText.body2(
                    subtitleOne!,
                    color:
                        selectedValue == value ? colors.white : colors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PackageItem extends StatelessWidget {
  const PackageItem({
    Key? key,
    this.title,
    this.subtitleOne,
    this.subtitleTwo,
    this.rateLabel,
    this.value,
    this.selectedValue,
    this.onTaped,
    this.rateOld,
    this.rateNew,
    this.onSeeMoreTaped,
    this.seeMoreSelectedValue,
    this.seeMoreList,
  }) : super(key: key);
  final String? title;
  final String? subtitleOne;
  final String? subtitleTwo;
  final String? rateOld;
  final String? rateNew;
  final String? rateLabel;
  final List<String>? seeMoreList;
  final DogTrainingPackage? value;
  final DogTrainingPackage? selectedValue;
  final DogTrainingPackage? seeMoreSelectedValue;
  final void Function()? onTaped;
  final void Function()? onSeeMoreTaped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedValue == value ? colors.primary : colors.white,
          boxShadow: [
            BoxShadow(
              color: selectedValue == value
                  ? colors.white
                  : colors.kcCaptionGreyColor,
              blurRadius: 3.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                0, // Move to right 10  horizontally
                0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
          children: [
            // Always
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Image.asset("assets/images/running_package.png"),
                  backgroundColor: Color(0xffFFF0E0),
                ),
                horizontalSpaceSmall,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body2(
                        title!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.black,
                      ),
                      verticalSpaceTiny,
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/seemore_time.svg",
                            height: 13,
                            width: 13,
                            color: selectedValue == value
                                ? colors.white
                                : colors.primary,
                          ),
                          horizontalSpaceTiny,
                          AppText.caption(
                            subtitleOne!,
                            color: selectedValue == value
                                ? colors.white
                                : colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                      verticalSpaceTiny,
                      Visibility(
                        visible: subtitleTwo != "",
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/seemore_time.svg",
                              height: 13,
                              width: 13,
                              color: selectedValue == value
                                  ? colors.white
                                  : colors.primary,
                            ),
                            horizontalSpaceTiny,
                            AppText.caption(
                              subtitleTwo!,
                              color: selectedValue == value
                                  ? colors.white
                                  : colors.kcCaptionGreyColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        rateOld!,
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: selectedValue == value
                              ? colors.white
                              : colors.black,
                        ),
                      ),
                      AppText.body2(
                        rateNew!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.primary,
                      ),
                      AppText.caption(
                        rateLabel!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.kcCaptionGreyColor,
                      ),
                      verticalSpaceRegular,
                      GestureDetector(
                        onTap: onSeeMoreTaped,
                        child: Text(
                          seeMoreSelectedValue == value
                              ? "See less"
                              : "See more",
                          style: TextStyle(
                            color: selectedValue == value
                                ? colors.white
                                : colors.primary,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            decorationColor: selectedValue == value
                                ? colors.white
                                : colors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            seeMoreSelectedValue == value ? verticalSpaceRegular : Container(),
            // See more
            seeMoreSelectedValue == value
                ? Container(
                    child: Wrap(
                      children: seeMoreList!
                          .map(
                            (item) => Row(
                              children: [
                                Icon(
                                  Icons.check_rounded,
                                  color: selectedValue == value
                                      ? colors.white
                                      : colors.primary,
                                ),
                                horizontalSpaceTiny,
                                AppText.caption(
                                  item,
                                  color: selectedValue == value
                                      ? colors.white
                                      : colors.kcCaptionGreyColor,
                                ),
                              ],
                            ),
                          )
                          .toList()
                          .cast<Widget>(),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class RunnerItems extends StatelessWidget {
  const RunnerItems({
    Key? key,
    this.name,
    this.imageUrl,
    this.onTapped,
    this.selected,
  }) : super(key: key);
  final String? name;
  final String? imageUrl;
  final bool? selected;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected! ? colors.primary : colors.kcLightGreyColor,
            width: selected! ? 1.5 : 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/dummy_dog_profile.png"),
            ),
            AppText.body1(
              name!,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
