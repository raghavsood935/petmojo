import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../../enum/dog_training_package.dart';
import 'dt_selectpackage_viewmodel.dart';

class DTSelectPackageView extends StatelessWidget {
  const DTSelectPackageView({
    Key? key,
    required this.appointmentId,
    required this.currentPackage,
    required this.address1,
    required this.address2,
    required this.dogs,
    required this.partnerName,
    required this.previousAmount,
  }) : super(key: key);
  final String appointmentId;
  final DogTrainingPackage currentPackage;
  final String address1;
  final String address2;
  final List<String> dogs;
  final String partnerName;
  final double previousAmount;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTSelectPackageViewModel>.reactive(
      viewModelBuilder: () => DTSelectPackageViewModel(
        appointmentId,
        currentPackage,
        address1,
        address2,
        dogs,
        partnerName,
        previousAmount,
      ),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  verticalSpaceRegular,
                  // Heading
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        left: 0,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft,
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          onPressed: model.navigateBack,
                        ),
                      ),
                      Center(
                        child: AppText.headingThree(
                          "Select Package",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  verticalSpaceMedium,
                  // Packages
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: model.currentPackage == DogTrainingPackage.Two,
                        child: Column(
                          children: [
                            PackageItem(
                              value: DogTrainingPackage.Three,
                              selectedValue: model.selectedPackage,
                              onTaped: () =>
                                  model.selectPlan(DogTrainingPackage.Three),
                              seeMoreSelectedValue:
                                  model.seeMoreSelectedPackage,
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
                              ],
                              seeMoreCheckList: [
                                threeTrainingBonusOne,
                                threeTrainingBonusTwo,
                                threeTrainingBonusThree,
                                threeTrainingBonusFour,
                              ],
                            ),
                            verticalSpaceMedium,
                          ],
                        ),
                      ),
                      Visibility(
                        visible: model.currentPackage ==
                                DogTrainingPackage.Two ||
                            model.currentPackage == DogTrainingPackage.Three,
                        child: Column(
                          children: [
                            PackageItem(
                              value: DogTrainingPackage.Four,
                              selectedValue: model.selectedPackage,
                              onTaped: () =>
                                  model.selectPlan(DogTrainingPackage.Four),
                              seeMoreSelectedValue:
                                  model.seeMoreSelectedPackage,
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
                          ],
                        ),
                      ),
                      Visibility(
                        visible: model.currentPackage ==
                                DogTrainingPackage.Two ||
                            model.currentPackage == DogTrainingPackage.Three ||
                            model.currentPackage == DogTrainingPackage.Four,
                        child: Column(
                          children: [
                            PackageItem(
                              value: DogTrainingPackage.Five,
                              selectedValue: model.selectedPackage,
                              onTaped: () =>
                                  model.selectPlan(DogTrainingPackage.Five),
                              seeMoreSelectedValue:
                                  model.seeMoreSelectedPackage,
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
                              ],
                              seeMoreCheckList: [
                                fiveTrainingBonusOne,
                                fiveTrainingBonusTwo,
                                fiveTrainingBonusThree,
                                fiveTrainingBonusFour,
                              ],
                              hasCertificate: true,
                            ),
                            verticalSpaceMedium,
                          ],
                        ),
                      ),
                      Visibility(
                        visible: model.currentPackage ==
                                DogTrainingPackage.Two ||
                            model.currentPackage == DogTrainingPackage.Three ||
                            model.currentPackage == DogTrainingPackage.Four ||
                            model.currentPackage == DogTrainingPackage.Five,
                        child: Column(
                          children: [
                            PackageItem(
                              value: DogTrainingPackage.Six,
                              selectedValue: model.selectedPackage,
                              onTaped: () =>
                                  model.selectPlan(DogTrainingPackage.Six),
                              seeMoreSelectedValue:
                                  model.seeMoreSelectedPackage,
                              onSeeMoreTaped: () =>
                                  model.selectSeeMore(DogTrainingPackage.Six),
                              title: sixTrainingTitle,
                              subtitleOne: sixTrainingSubtitleOne,
                              subtitleTwo: sixTrainingSubtitleTwo,
                              rateOld: sixTrainingRateOld,
                              rateNew: sixTrainingRateNew,
                              rateLabel: sixTrainingRateLabel,
                              seeMoreList: [
                                sixTrainingSeeOne,
                                sixTrainingSeeTwo,
                                sixTrainingSeeThree,
                                sixTrainingSeeFour,
                                sixTrainingSeeFive,
                                sixTrainingSeeSix,
                                sixTrainingSeeSeven,
                                sixTrainingSeeEight,
                                sixTrainingSeeNine,
                                sixTrainingSeeTen,
                                sixTrainingSeeEleven,
                                sixTrainingSeeTwelve,
                                sixTrainingSeeThirteen,
                                sixTrainingSeeFourteen,
                                sixTrainingSeeFifteen,
                                sixTrainingSeeSixteen,
                                sixTrainingSeeSeventeen,
                              ],
                              seeMoreCheckList: [
                                sixTrainingBonusOne,
                                sixTrainingBonusTwo,
                                sixTrainingBonusThree,
                                sixTrainingBonusFour,
                              ],
                              hasCertificate: true,
                            ),
                            verticalSpaceMedium,
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Poster
                  OrderSummaryPoster(
                    title: "We are mission-driven not money-driven",
                    description: "100% Refund available",
                    byline: "NO QUESTIONS ASKED",
                  ),
                  verticalSpaceMedium,
                  verticalSpaceLarge,
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.horizontal),
          child: Container(
            color: colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
            child: GestureDetector(
              onTap: () {
                model.onContinuePressed();
                SystemChannels.textInput.invokeMethod('TextInput.hide');
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OrderSummaryPoster extends StatefulWidget {
  final String title;
  final String description;
  final String byline;

  const OrderSummaryPoster({
    Key? key,
    required this.title,
    required this.description,
    required this.byline,
  }) : super(key: key);

  @override
  State<OrderSummaryPoster> createState() => _OrderSummaryPosterState();
}

class _OrderSummaryPosterState extends State<OrderSummaryPoster> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/dialog_background.png'),
              fit: BoxFit.fill),
          border: Border.all(
            color: Colors.grey, //color of border
            width: 2, //width of border
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Container(
            // padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xffffff),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.title,
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 14,
                              color: colors.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.only(left: 10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4ED387),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            widget.byline,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.subtitle2?.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF4ED387),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
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
                          margin: EdgeInsets.only(bottom: 5),
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
                              ),
                              Expanded(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  children: seeMoreList!
                                      .skip(seeMoreList!.length ~/ 2)
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
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5),
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
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
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
                                    Image.asset(
                                        "assets/images/certificate1.png"),
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
