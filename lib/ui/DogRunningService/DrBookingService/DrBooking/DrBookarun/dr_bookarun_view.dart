import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/enum/dog_running_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/comment_added_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dr_dogrunningbooking_viewmodel.dart';

class DRBookARunView extends ViewModelWidget<DRDogRunningBookingViewModel> {
  @override
  Widget build(BuildContext context, DRDogRunningBookingViewModel model) {
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
                    height: 110,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.myPets.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == model.myPets.length) {
                          return NewPet(
                            onTapped: model.createNewPet,
                          );
                        }
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
                  : bookARunningSubtitle,
            ),
            verticalSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.freeWalkAvailable ? verticalSpaceMedium : Container(),
                model.freeWalkAvailable
                    ? FreePackageItem(
                        value: DogRunningPackage.One,
                        selectedValue: model.selectedPlan,
                        onTaped: () => model.selectPlan(DogRunningPackage.One),
                        title: perWalkTitle,
                        subtitleOne: perWalkSubtitleOne,
                        rateOld: perWalkRateOld,
                      )
                    : Container(),
                verticalSpaceMedium,
                PackageItem(
                  value: DogRunningPackage.Four,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogRunningPackage.Four),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogRunningPackage.Four),
                  title: perMonthOnceTitle,
                  subtitleOne: perMonthOnceSubtitleOne,
                  subtitleTwo: perMonthOnceSubtitleTwo,
                  rateOld: perMonthOnceRateOld,
                  rateNew: perMonthOnceRateNew,
                  rateLabel: perMonthOnceRateLabel,
                  seeMoreList: [
                    walkSeeOne,
                    walkSeeTwo,
                    walkSeeThree,
                    walkSeeFour
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogRunningPackage.Five,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogRunningPackage.Five),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogRunningPackage.Five),
                  title: perMonthTwiceTitle,
                  subtitleOne: perMonthTwiceSubtitleOne,
                  subtitleTwo: perMonthTwiceSubtitleTwo,
                  rateOld: perMonthTwiceRateOld,
                  rateNew: perMonthTwiceRateNew,
                  rateLabel: perMonthTwiceRateLabel,
                  seeMoreList: [
                    walkSeeOne,
                    walkSeeTwo,
                    walkSeeThree,
                    walkSeeFour,
                    walkSeeFive,
                    walkSeeSix
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogRunningPackage.Six,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogRunningPackage.Six),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogRunningPackage.Six),
                  title: threeMonthOnceTitle,
                  subtitleOne: threeMonthOnceSubtitleOne,
                  subtitleTwo: threeMonthOnceSubtitleTwo,
                  rateOld: threeMonthOnceRateOld,
                  rateNew: threeMonthOnceRateNew,
                  rateLabel: threeMonthOnceRateLabel,
                  seeMoreList: [
                    walkSeeOne,
                    walkSeeTwo,
                    walkSeeThree,
                    walkSeeFour
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogRunningPackage.Seven,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogRunningPackage.Seven),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogRunningPackage.Seven),
                  title: threeMonthTwiceTitle,
                  subtitleOne: threeMonthTwiceSubtitleOne,
                  subtitleTwo: threeMonthTwiceSubtitleTwo,
                  rateOld: threeMonthTwiceRateOld,
                  rateNew: threeMonthTwiceRateNew,
                  rateLabel: threeMonthTwiceRateLabel,
                  seeMoreList: [
                    walkSeeOne,
                    walkSeeTwo,
                    walkSeeThree,
                    walkSeeFour,
                    walkSeeFive,
                    walkSeeSix
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
  final DogRunningPackage? value;
  final DogRunningPackage? selectedValue;
  final void Function()? onTaped;

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
                    "",
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
  final DogRunningPackage? value;
  final DogRunningPackage? selectedValue;
  final DogRunningPackage? seeMoreSelectedValue;
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
                            subtitleTwo!,
                            color: selectedValue == value
                                ? colors.white
                                : colors.kcCaptionGreyColor,
                          ),
                        ],
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

class NewPet extends StatelessWidget {
  const NewPet({
    Key? key,
    this.onTapped,
  }) : super(key: key);
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
              color: colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: colors.black54,
                width: 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verticalSpaceSmall,
                // plus icon
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.add,
                    color: colors.white,
                    size: 20,
                  ),
                ),
                AppText.body1(
                  "Add pet",
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
              ],
            ),
          ),
          verticalSpaceSmall,
          CircleAvatar(
            radius: 5,
            backgroundColor: colors.kcLightGreyColor,
          ),
        ],
      ),
    );
  }
}
