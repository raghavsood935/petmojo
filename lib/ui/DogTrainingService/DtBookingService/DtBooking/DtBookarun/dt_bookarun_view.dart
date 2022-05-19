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
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     AppText.body2(noOfPetsLabel),
            //     verticalSpaceSmall,
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Row(
            //           children: [
            //             Radio<NoOfRuns>(
            //               value: NoOfRuns.One,
            //               groupValue: model.selectedRun,
            //               onChanged: (value) => model.selectRun(value),
            //               activeColor: colors.primary,
            //             ),
            //             AppText.body1("1"),
            //           ],
            //         ),
            //         horizontalSpaceLarge,
            //         Row(
            //           children: [
            //             Radio<NoOfRuns>(
            //               value: NoOfRuns.Two,
            //               groupValue: model.selectedRun,
            //               onChanged: (value) => model.selectRun(value),
            //               activeColor: colors.primary,
            //             ),
            //             AppText.body1("2"),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // verticalSpaceTiny,

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
                    height: 110,
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
                  verticalSpaceSmall,
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
                        rateOld: freeTrainingRateOld,
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
                  seeMoreCheckList: [
                    twoTrainingBonusOne,
                    twoTrainingBonusTwo,
                    twoTrainingBonusThree,
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
                  seeMoreCheckList: [
                    threeTrainingBonusOne,
                    threeTrainingBonusTwo,
                    threeTrainingBonusThree,
                    threeTrainingBonusFour,
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
                  seeMoreCheckList: [
                    fourTrainingBonusOne,
                    fourTrainingBonusTwo,
                    fourTrainingBonusThree,
                    fourTrainingBonusFour,
                  ],
                  hasCertificate: true,
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
                  seeMoreCheckList: [
                    fiveTrainingBonusOne,
                    fiveTrainingBonusTwo,
                    fiveTrainingBonusThree,
                    fiveTrainingBonusFour,
                  ],
                  hasCertificate: true,
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
                    trailing: model.isCouponProcessing
                        ? Transform.scale(
                            scale: 0.6,
                            child: CircularProgressIndicator(
                              color: colors.primary,
                            ),
                          )
                        : Icon(
                            Icons.arrow_forward_rounded,
                            color: colors.primary,
                          ),
                    trailingTapped: model.applyCoupon,
                    isBoxBorder: true,
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                  verticalSpaceTiny,
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

            //For Contact
            GestureDetector(
              onTap: () => model.callCS(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: colors.kcMediumGreyColor,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText.body1Bold(
                              "For more offers call Customer Service"),
                          AppText.caption(
                              "24/7 Booking Details and Support available"),
                          AppText.bodyBold(
                            "9009004473",
                            color: Color(0xFF2ECC71),
                          ),
                          AppText.body1("Call Now")
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Color(0xFF2ECC71).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFF2ECC71),
                        ),
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xFF2ECC71),
                        size: 50,
                      ),
                    ),
                  ],
                ),
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
    this.value, //
    this.selectedValue, //
    this.onTaped, //
    this.rateOld, //
  }) : super(key: key);
  final String? title;
  final String? subtitleOne;
  final String? rateOld;
  final DogTrainingPackage? value;
  final DogTrainingPackage? selectedValue;
  final void Function()? onTaped;

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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Image.asset("assets/images/free_training_img.png"),
              backgroundColor: Colors.transparent,
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
                    "FREE Assessment\nTraining Demonstration",
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
                children: [
                  AppText.body2(
                    rateOld!,
                    color:
                        selectedValue == value ? colors.white : colors.primary,
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.access_time,
                        color: selectedValue == value
                            ? colors.white
                            : colors.primary,
                      ),
                      horizontalSpaceTiny,
                      AppText.body2(
                        subtitleOne!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.primary,
                      ),
                    ],
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
    this.seeMoreCheckList,
    this.hasCertificate,
  }) : super(key: key);
  final String? title;
  final String? subtitleOne;
  final String? subtitleTwo;
  final String? rateOld;
  final String? rateNew;
  final String? rateLabel;
  final List<String>? seeMoreList;
  final List<String>? seeMoreCheckList;
  final DogTrainingPackage? value;
  final DogTrainingPackage? selectedValue;
  final DogTrainingPackage? seeMoreSelectedValue;
  final void Function()? onTaped;
  final void Function()? onSeeMoreTaped;
  final bool? hasCertificate;

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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
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
                      ),
                    ],
                  ),
                ),
                Column(
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
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: GestureDetector(
                    //     onTap: onSeeMoreTaped,
                    //     child: Text(
                    //       seeMoreSelectedValue == value
                    //           ? "See less"
                    //           : "See more",
                    //       style: TextStyle(
                    //         color: selectedValue == value
                    //             ? colors.white
                    //             : colors.primary,
                    //         fontSize: 14,
                    //         decoration: TextDecoration.underline,
                    //         decorationColor: selectedValue == value
                    //             ? colors.white
                    //             : colors.primary,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            seeMoreSelectedValue == value ? verticalSpaceRegular : Container(),
            // See more
            seeMoreSelectedValue == value
                ? SingleChildScrollView(
                  child: Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  children: seeMoreList!
                                      .take(seeMoreList!.length ~/ 2)
                                      .map(
                                        (item) => Row(
                                      children: [
                                        Icon(Icons.check_rounded,
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
                              ),
                              Expanded(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  children: seeMoreList!
                                      .skip(seeMoreList!.length ~/ 2 )
                                      .map(
                                        (item) => Row(
                                      children: [
                                        Icon(
                                          Icons.check_rounded,
                                          color:selectedValue == value
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
                              ),
                            ],
                          ),
                        ),

                        seeMoreCheckList == null
                            ? SizedBox()
                            : Expanded(
                          flex: 0,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: AppText.captionBold(
                                    "Bonus Material : ",
                                    color: selectedValue == value
                                        ? colors.white
                                        : colors.kcCaptionGreyColor,
                                  ),
                                ),
                            ),

                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(

                                  children: seeMoreCheckList!
                                      .take(seeMoreCheckList!.length ~/ 2)
                                      .map(
                                        (item) => Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                      children: [
                                          Icon(Icons.check_rounded,
                                              color: Color(0xff8adb53)),
                                          horizontalSpaceTiny,
                                          Expanded(
                                            child: AppText.caption(
                                              item,
                                              color: selectedValue == value
                                                  ? colors.white
                                                  : colors.primary,
                                            ),
                                          ),
                                      ],
                                    ),
                                        ),
                                  )
                                      .toList()
                                      .cast<Widget>(),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: seeMoreCheckList!
                                      .skip(seeMoreCheckList!.length ~/ 2)
                                      .map(
                                        (item) => Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                      children: [
                                          Icon(
                                            Icons.check_rounded,
                                            color: Color(0xff8adb53),
                                          ),
                                          horizontalSpaceTiny,
                                          Expanded(
                                            child: AppText.caption(
                                              item,
                                              color: selectedValue == value
                                                  ? colors.white
                                                  : colors.primary,
                                            ),
                                          ),
                                      ],
                                    ),
                                        ),
                                  )
                                      .toList()
                                      .cast<Widget>(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        hasCertificate == null
                            ? SizedBox()
                            : Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/certificate1.png"),
                                    AppText.caption(
                                      "Advanced Training Certificate Provided",
                                      color: selectedValue == value
                                          ? colors.white
                                          : colors.primary,
                                    )
                                  ],
                                ),
                              ),
                      ],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 90,
            decoration: BoxDecoration(
              color: selected! ? Color(0xFFFEDFDD) : colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: colors.primary,
                width: selected! ? 1.5 : 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verticalSpaceSmall,
                CircleAvatar(
                  child: Image.asset("assets/images/dummy_dog_profile.png"),
                ),
                AppText.body1(
                  name!,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
              ],
            ),
          ),
          verticalSpaceSmall,
          CircleAvatar(
            radius: 5,
            backgroundColor:
                selected! ? colors.primary : colors.kcLightGreyColor,
          ),
        ],
      ),
    );
  }
}
