import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tamely/enum/dog_grooming_package.dart';
import 'package:tamely/enum/dog_training_package.dart';
import 'package:tamely/enum/no_of_runs.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/styles.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dg_doggroomingbooking_viewmodel.dart';

class DGBookARunView extends ViewModelWidget<DGDogGroomingBookingViewModel> {
  @override
  Widget build(BuildContext context, DGDogGroomingBookingViewModel model) {
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
              bookAGroomingSubtitle,
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // // model.freeWalkAvailable ? verticalSpaceMedium : Container(),
                // // model.freeWalkAvailable
                // //     ? FreePackageItem(
                // //         value: DogTrainingPackage.One,
                // //         selectedValue: model.selectedPlan,
                // //         onTaped: () => model.selectPlan(DogTrainingPackage.One),
                // //         title: freeTrainingTitle,
                // //         subtitleOne: freeTrainingSubtitleOne,
                // //         rateOld: freeTrainingRateOld,
                // //       )
                // //     : Container(),
                // verticalSpaceMedium,
                PackageItem(
                  value: DogGroomingPackage.One,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogGroomingPackage.One),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogGroomingPackage.One),
                  title: firstGroomingTitle,
                  subtitle: firstGroomingSubtitleOne,
                  rateOld: firstGroomingRateOld,
                  rateNew: firstGroomingRateNew,
                  rateLabel: firstGroomingRateLabel,
                  seeMoreList: [
                    firstGroomingSeeOne,
                    firstGroomingSeeTwo,
                    firstGroomingSeeThree,
                    firstGroomingSeeFour,
                    firstGroomingSeeFive,
                    firstGroomingSeeSix,
                    firstGroomingSeeSeven,
                    firstGroomingSeeEight,
                    firstGroomingSeeNine,
                    firstGroomingSeeTen,
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogGroomingPackage.Two,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogGroomingPackage.Two),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogGroomingPackage.Two),
                  title: twoGroomingTitle,
                  subtitle: twoGroomingSubtitleOne,
                  rateOld: twoGroomingRateOld,
                  rateNew: twoGroomingRateNew,
                  rateLabel: twoGroomingRateLabel,
                  seeMoreList: [
                    twoGroomingSeeOne,
                    twoGroomingSeeTwo,
                  ],
                ),
                verticalSpaceMedium,
                PackageItem(
                  value: DogGroomingPackage.Three,
                  selectedValue: model.selectedPlan,
                  onTaped: () => model.selectPlan(DogGroomingPackage.Three),
                  seeMoreSelectedValue: model.seeMoreSelectedPlan,
                  onSeeMoreTaped: () =>
                      model.selectSeeMore(DogGroomingPackage.Three),
                  title: threeGroomingTitle,
                  subtitle: threeGroomingSubtitleOne,
                  rateOld: threeGroomingRateOld,
                  rateNew: threeGroomingRateNew,
                  rateLabel: threeGroomingRateLabel,
                  seeMoreList: [
                    threeGroomingSeeOne,
                    threeGroomingSeeTwo,
                    threeGroomingSeeThree,
                    threeGroomingSeeFour,
                    threeGroomingSeeFive,
                    threeGroomingSeeSix,
                    threeGroomingSeeSeven,
                    threeGroomingSeeEight,
                    threeGroomingSeeNine,
                    threeGroomingSeeTen,
                    threeGroomingSeeEleven,
                    threeGroomingSeeTwelve,
                  ],
                ),
              ],
            ),
            verticalSpaceMedium,

            Container(
              margin: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                      'assets/images/service_page_images/groomin_shampoo.png'),
                  Positioned(
                    bottom: 15,
                    left: 55,
                    right: 30,
                    child: AppText.bodyBold(
                      dogGroomingProductDescription,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffececec),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
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
    this.subtitle,
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
  final String? subtitle;
  final String? rateOld;
  final String? rateNew;
  final String? rateLabel;
  final List<String>? seeMoreList;
  final DogGroomingPackage? value;
  final DogGroomingPackage? selectedValue;
  final DogGroomingPackage? seeMoreSelectedValue;
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
                  child: Image.asset("assets/images/dog_grooming_icon.png"),
                  backgroundColor: Color(0xffFAC9D7),
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
                      AppText.caption(
                        subtitle!,
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
                      seeMoreSelectedValue != value
                          ? verticalSpaceRegular
                          : SizedBox(),
                      seeMoreSelectedValue != value
                          ? GestureDetector(
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
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ],
            ),
            seeMoreSelectedValue == value ? verticalSpaceRegular : Container(),
            // See more
            seeMoreSelectedValue == value
                ? Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          children: seeMoreList!
                              .take(seeMoreList!.length ~/ 2)
                              .map(
                                (item) => Row(
                                  children: [
                                    Icon(Icons.check_rounded,
                                        color: Color(0xff8adb53)),
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
                        Wrap(
                          direction: Axis.vertical,
                          children: seeMoreList!
                              .skip(seeMoreList!.length ~/ 2)
                              .map(
                                (item) => Row(
                                  children: [
                                    Icon(
                                      Icons.check_rounded,
                                      color: Color(0xff8adb53),
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
