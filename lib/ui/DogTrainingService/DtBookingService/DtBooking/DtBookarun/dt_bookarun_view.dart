import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamely/enum/dog_training_package.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../../enum/TrainingPackageType.dart';
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

            // Pro & Elite
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Pro
                  GestureDetector(
                    //onTap: model.onTapPackageType(TrainingPackageType.Pro),
                    onTap: model.onTapPackageTypePro,
                    child: Container(
                      height: 125,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            model.selectedPackageType == TrainingPackageType.Pro
                                ? colors.primary
                                : colors.mediumBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: colors.kcCaptionGreyColor,
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
                          verticalSpaceRegular,
                          verticalSpaceTiny,
                          AppText.headingTwo(
                            "PRO",
                            color: colors.white,
                          ),
                          Spacer(),
                          AppText.body1(
                            "₹7,500 / Month",
                            color: colors.white,
                          ),
                          AppText.body1(
                            "Onwards",
                            color: colors.white,
                          ),
                          verticalSpaceRegular,
                        ],
                      ),
                    ),
                  ),
                  // Elite
                  GestureDetector(
                    onTap: model.onTapPackageTypeElite,
                    child: Container(
                      height: 125,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: model.selectedPackageType ==
                                TrainingPackageType.Elite
                            ? colors.primary
                            : colors.mediumBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: colors.kcCaptionGreyColor,
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
                          verticalSpaceRegular,
                          verticalSpaceTiny,
                          AppText.headingTwo(
                            "PREMIUM",
                            color: colors.white,
                          ),
                          Spacer(),
                          AppText.body1(
                            "₹9,800 / Month",
                            color: colors.white,
                          ),
                          AppText.body1(
                            "Onwards",
                            color: colors.white,
                          ),
                          verticalSpaceRegular,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            verticalSpaceSmall,

            // Related Content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: model.selectedPackageType == TrainingPackageType.Pro
                    ? Column(
                        children: [
                          AppText.headingTwo(
                            "PRO Trainers",
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star_outline,
                                size: 20,
                                color: colors.kcLightGreyColor,
                              ),
                            ],
                          ),
                          verticalSpaceTiny,
                          AppText.body2(
                            "Certified,",
                            color: colors.kcCaptionGreyColor,
                          ),
                          verticalSpaceTiny,
                          AppText.body2(
                            "Experienced: 35+ Dogs Trained",
                            color: colors.kcCaptionGreyColor,
                          ),
                          verticalSpaceTiny,
                        ],
                      )
                    : Column(
                        children: [
                          AppText.headingTwo("PREMIUM Trainers"),
                          verticalSpaceTiny,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: colors.grad1Color,
                              ),
                            ],
                          ),
                          verticalSpaceTiny,
                          AppText.body2(
                            "Certified,",
                            color: colors.kcCaptionGreyColor,
                          ),
                          verticalSpaceTiny,
                          AppText.body2(
                            "Experienced: 100+ Dogs Trained",
                            color: colors.kcCaptionGreyColor,
                          ),
                          AppText.body2(
                            "Dog Psychologist",
                            color: colors.kcCaptionGreyColor,
                          ),
                          verticalSpaceTiny,
                        ],
                      ),
              ),
            ),
            verticalSpaceRegular,

            // Plans
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
                        rateOld: freeTrainingRateOldPro,
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
                  rateOld: model.selectedPackageType == TrainingPackageType.Pro
                      ? twoTrainingRateOldPro
                      : twoTrainingRateOldElite,
                  rateNew: model.selectedPackageType == TrainingPackageType.Pro
                      ? twoTrainingRateNewPro
                      : twoTrainingRateNewElite,
                  rateLabel:
                      model.selectedPackageType == TrainingPackageType.Pro
                          ? twoTrainingRateLabelPro
                          : twoTrainingRateLabelElite,
                  months: "01",
                  listNo: 4,
                  seeMoreList: [
                    "Potty Training",
                    "Instruction's",
                    "Feedback Intelligence",
                    "Biting Calibration",
                    "Walking",
                    "Leash Walking",
                    "Basic Socialisation",
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
                  rateOld: model.selectedPackageType == TrainingPackageType.Pro
                      ? threeTrainingRateOldPro
                      : threeTrainingRateOldElite,
                  rateNew: model.selectedPackageType == TrainingPackageType.Pro
                      ? threeTrainingRateNewPro
                      : threeTrainingRateNewElite,
                  rateLabel:
                      model.selectedPackageType == TrainingPackageType.Pro
                          ? threeTrainingRateLabelPro
                          : threeTrainingRateLabelElite,
                  months: "02",
                  listNo: 4,
                  seeMoreList: [
                    "Play Module",
                    "Greetings",
                    "Feedback Intelligence",
                    "Basic Socialisation",
                    "Instruction's",
                    "Walking",
                    "Leash Walking",
                    "Without Leash Walking",
                  ],
                  seeMoreCheckList: [
                    threeTrainingBonusOne,
                    threeTrainingBonusThree,
                    threeTrainingBonusTwo,
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
                  rateOld: model.selectedPackageType == TrainingPackageType.Pro
                      ? fourTrainingRateOldPro
                      : fourTrainingRateOldElite,
                  rateNew: model.selectedPackageType == TrainingPackageType.Pro
                      ? fourTrainingRateNewPro
                      : fourTrainingRateNewElite,
                  rateLabel:
                      model.selectedPackageType == TrainingPackageType.Pro
                          ? fourTrainingRateLabelPro
                          : fourTrainingRateLabelElite,
                  months: "03",
                  listNo: 6,
                  seeMoreList: [
                    "Canine Misbehaviour",
                    "Counting- (1-5)",
                    "Lower Acrobat Module",
                    "Play Module",
                    "Advanced Socialisation",
                    "Greetings",
                    "Feedback Intelligence",
                    "Instruction’s",
                    "Walking",
                    "Without Leash Walking",
                    "Leash Walking",
                  ],
                  seeMoreCheckList: [
                    threeTrainingBonusOne,
                    threeTrainingBonusThree,
                    threeTrainingBonusTwo,
                    threeTrainingBonusFour,
                  ],
                  hasCertificate: true,
                ),
                verticalSpaceMedium,
                Visibility(
                  visible:
                      model.selectedPackageType == TrainingPackageType.Elite,
                  child: PackageItem(
                    value: DogTrainingPackage.Five,
                    selectedValue: model.selectedPlan,
                    onTaped: () => model.selectPlan(DogTrainingPackage.Five),
                    seeMoreSelectedValue: model.seeMoreSelectedPlan,
                    onSeeMoreTaped: () =>
                        model.selectSeeMore(DogTrainingPackage.Five),
                    title: fiveTrainingTitle,
                    subtitleOne: fiveTrainingSubtitleOne,
                    subtitleTwo: fiveTrainingSubtitleTwo,
                    rateOld: fiveTrainingRateOldElite,
                    rateNew: fiveTrainingRateNewElite,
                    rateLabel: fiveTrainingRateLabelElite,
                    months: "04",
                    listNo: 8,
                    seeMoreList: [
                      "Guard Training",
                      "Gaurd House Training",
                      "Greetings",
                      "Counting- (1-5)",
                      "Walking",
                      "Without Leash Walking",
                      "Hold Treat in Namaste position",
                      "Canine Misbehaviour Correction",
                      "Greetings",
                      "Lower Acrobat Module",
                      "Play Module",
                      "Greetings",
                      "Feedback Intelligence",
                      "Instruction’s",
                      "Advanced Socialisation",
                      "Leash Walking",
                    ],
                    seeMoreCheckList: [
                      threeTrainingBonusOne,
                      threeTrainingBonusThree,
                      threeTrainingBonusTwo,
                      threeTrainingBonusFour,
                    ],
                    hasCertificate: true,
                  ),
                ),
                verticalSpaceMedium,
                Visibility(
                  visible:
                      model.selectedPackageType == TrainingPackageType.Elite,
                  child: PackageItem(
                    value: DogTrainingPackage.Six,
                    selectedValue: model.selectedPlan,
                    onTaped: () => model.selectPlan(DogTrainingPackage.Six),
                    seeMoreSelectedValue: model.seeMoreSelectedPlan,
                    onSeeMoreTaped: () =>
                        model.selectSeeMore(DogTrainingPackage.Six),
                    title: sixTrainingTitle,
                    subtitleOne: sixTrainingSubtitleOne,
                    subtitleTwo: sixTrainingSubtitleTwo,
                    rateOld: sixTrainingRateOldElite,
                    rateNew: sixTrainingRateNewElite,
                    rateLabel: sixTrainingRateLabelElite,
                    months: "06",
                    listNo: 9,
                    seeMoreList: [
                      "Competition",
                      "Theatrics",
                      "Guard Training",
                      "Advanced House Training",
                      "Greetings",
                      "Counting- (1-5)",
                      "Hold Treat in Namaste position",
                      "Lower Acrobat Module",
                      "Canine Misbehaviour Correction",
                      "Play Module",
                      "Shake Hand, Hi-Five",
                      "Feedback Intelligence",
                      "Instruction’s",
                      "Walking",
                      "Without Leash Walking",
                      "Leash Walking",
                      "Advanced Socialisation",
                    ],
                    seeMoreCheckList: [
                      threeTrainingBonusOne,
                      threeTrainingBonusThree,
                      threeTrainingBonusTwo,
                      threeTrainingBonusFour,
                    ],
                    hasCertificate: true,
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,

            //For Contact
            // GestureDetector(
            //   onTap: () => model.callCS(),
            //   child: Container(
            //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            //     decoration: BoxDecoration(
            //       color: colors.white,
            //       borderRadius: BorderRadius.circular(15),
            //       border: Border.all(
            //         width: 1,
            //         color: colors.kcMediumGreyColor,
            //       ),
            //     ),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           flex: 4,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               AppText.body1Bold(
            //                   "For more offers call Customer Service"),
            //               AppText.caption(
            //                   "24/7 Booking Details and Support available"),
            //               AppText.bodyBold(
            //                 "9009004473",
            //                 color: Color(0xFF2ECC71),
            //               ),
            //               AppText.body1("Call Now")
            //             ],
            //           ),
            //         ),
            //         Container(
            //           height: 75,
            //           width: 75,
            //           decoration: BoxDecoration(
            //             color: Color(0xFF2ECC71).withOpacity(0.5),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 1,
            //               color: Color(0xFF2ECC71),
            //             ),
            //           ),
            //           child: Icon(
            //             Icons.phone,
            //             color: Color(0xFF2ECC71),
            //             size: 50,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

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
        //margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedValue == value ? colors.primary : colors.white,
          border: Border.all(
            color: selectedValue == value
                ? colors.primary
                : colors.kcCaptionGreyColor,
            width: 1,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: selectedValue == value
          //         ? colors.white
          //         : colors.kcCaptionGreyColor,
          //     blurRadius: 3.0, // soften the shadow
          //     spreadRadius: 0.0, //extend the shadow
          //     offset: Offset(
          //       0, // Move to right 10  horizontally
          //       0, // Move to bottom 10 Vertically
          //     ),
          //   )
          // ],
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
    this.months,
    this.listNo,
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
  final String? months;
  final int? listNo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedValue == value ? colors.primary : colors.primaryLight,
          border: Border.all(
            color: selectedValue == value
                ? colors.primary
                : colors.kcCaptionGreyColor,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            // Always
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // One
                Column(
                  children: [
                    AppText.subheadingBold(
                      months!,
                      color: selectedValue == value
                          ? colors.white
                          : colors.primary,
                    ),
                    //verticalSpaceTiny,
                    AppText.captionBold(
                      months == "01" ? "MONTH" : "MONTHS",
                      color: selectedValue == value
                          ? colors.white
                          : colors.primary,
                    ),
                  ],
                ),
                horizontalSpaceSmall,

                // Two
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceTiny,
                      AppText.body2Bold(
                        title!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.black,
                      ),
                      verticalSpaceTiny,
                      verticalSpaceTiny,
                      AppText.body1(
                        subtitleOne!,
                        color: selectedValue == value
                            ? colors.white
                            : colors.kcCaptionGreyColor,
                      ),
                    ],
                  ),
                ),

                // Three
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    verticalSpaceTiny,
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
                    //verticalSpaceRegular,
                  ],
                ),
              ],
            ),

            verticalSpaceRegular,

            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: seeMoreList!
                                .take(listNo!)
                                .map(
                                  (item) => Row(
                                    children: [
                                      // selectedValue == value
                                      //     ? Image.asset(
                                      //         "assets/images/package_paw_selected.png",
                                      //         height: 25,
                                      //       )
                                      //     : Image.asset(
                                      //         "assets/images/package_paw.png",
                                      //         height: 25,
                                      //       ),i
                                      Icon(
                                        Icons.check,
                                        color: selectedValue == value
                                            ? colors.white
                                            : colors.primary,
                                      ),
                                      horizontalSpaceTiny,
                                      Expanded(
                                        child: AppText.caption(
                                          item,
                                          color: selectedValue == value
                                              ? colors.white
                                              : colors.kcCaptionGreyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList()
                                .cast<Widget>(),
                          ),
                        ),
                        horizontalSpaceRegular,
                        Expanded(
                          child: Column(
                            children: seeMoreList!
                                .skip(listNo!)
                                .map(
                                  (item) => Row(
                                    children: [
                                      // selectedValue == value
                                      //     ? Image.asset(
                                      //         "assets/images/package_paw_selected.png",
                                      //         height: 25,
                                      //       )
                                      //     : Image.asset(
                                      //         "assets/images/package_paw.png",
                                      //         height: 25,
                                      //       ),
                                      Icon(
                                        Icons.check,
                                        color: selectedValue == value
                                            ? colors.white
                                            : colors.primary,
                                      ),
                                      horizontalSpaceTiny,
                                      Expanded(
                                        child: AppText.caption(
                                          item,
                                          color: selectedValue == value
                                              ? colors.white
                                              : colors.kcCaptionGreyColor,
                                        ),
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
                  verticalSpaceSmall,
                  seeMoreCheckList == null
                      ? SizedBox()
                      : Expanded(
                          flex: 0,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AppText.captionBold(
                              "BONUS",
                              color: selectedValue == value
                                  ? colors.white
                                  : colors.primary,
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
                                .take(2)
                                .map(
                                  (item) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        horizontalSpaceTiny,
                                        Expanded(
                                          child: AppText.captionBold(
                                            item,
                                            color: selectedValue == value
                                                ? colors.white
                                                : colors.kcMediumGreyColor,
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
                                .skip(2)
                                .map(
                                  (item) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        // Icon(
                                        //   Icons.check_rounded,
                                        //   color: Color(0xff8adb53),
                                        // ),
                                        horizontalSpaceTiny,
                                        Expanded(
                                          child: AppText.captionBold(
                                            item,
                                            color: selectedValue == value
                                                ? colors.white
                                                : colors.kcMediumGreyColor,
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
          ],
        ),
      ),
    );
  }
}
