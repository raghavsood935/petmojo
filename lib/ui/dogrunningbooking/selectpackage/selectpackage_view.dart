import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/enum/dog_running_package.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';

import '../dogrunningbooking_viewmodel.dart';

class SelectPackageView extends ViewModelWidget<DogRunningBookingViewModel> {
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
                  AppText.body2(selectPackageSubtitle),
                  verticalSpaceRegular,
                ],
              ),
            ),
            verticalSpaceSmall,

            // plans
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 25),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       PackageItem(
            //         value: DogRunningPackage.One,
            //         groupValue: model.selectedPlan,
            //         tap: model.selectPlan,
            //         title: perWalkTitle,
            //         subtitle: perWalkSubtitle,
            //         rate: perWalkRate,
            //         rateLabel: perWalkRateLabel,
            //       ),
            //       verticalSpaceMedium,
            //       PackageItem(
            //         value: DogRunningPackage.Two,
            //         groupValue: model.selectedPlan,
            //         tap: model.selectPlan,
            //         title: perWeekOnceTitle,
            //         subtitle: perWeekOnceSubtitle,
            //         rate: perWeekOnceRate,
            //         rateLabel: perWeekOnceRateLabel,
            //       ),
            //       verticalSpaceMedium,
            //       PackageItem(
            //         value: DogRunningPackage.Three,
            //         groupValue: model.selectedPlan,
            //         tap: model.selectPlan,
            //         title: perWeekTwiceTitle,
            //         subtitle: perWeekTwiceSubtitle,
            //         rate: perWeekTwiceRate,
            //         rateLabel: perWeekTwiceRateLabel,
            //       ),
            //       verticalSpaceMedium,
            //       PackageItem(
            //         value: DogRunningPackage.Four,
            //         groupValue: model.selectedPlan,
            //         tap: model.selectPlan,
            //         title: perMonthOnceTitle,
            //         subtitle: perMonthOnceSubtitle,
            //         rate: perMonthOnceRate,
            //         rateLabel: perMonthOnceRateLabel,
            //       ),
            //       verticalSpaceMedium,
            //       PackageItem(
            //         value: DogRunningPackage.Five,
            //         groupValue: model.selectedPlan,
            //         tap: model.selectPlan,
            //         title: perMonthTwiceTitle,
            //         subtitle: perMonthTwiceSubtitle,
            //         rate: perMonthTwiceRate,
            //         rateLabel: perMonthTwiceRateLabel,
            //       ),
            //     ],
            //   ),
            // ),
            verticalSpaceMedium,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            // offers
            Visibility(
              visible: !model.isOfferValid,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: AppText.body2("Offers"),
                    ),
                    verticalSpaceTiny,
                    AppInputField(
                      hint: "Enter Promo Code",
                      controller: model.promoCodeController,
                      onChanged: model.promoCodeValidation,
                      //errorText: model.validUser(emailController),
                      textInputType: TextInputType.name,
                      textCapitalization: TextCapitalization.none,
                    ),
                  ],
                ),
              ),
            ),
            !model.isOfferValid
                ? const Divider(
                    color: colors.kcLightGreyBackground,
                    height: 5.0,
                    thickness: 5.0,
                  )
                : Container(),
            !model.isOfferValid ? verticalSpaceMedium : Container(),

            // Offer Done
            Visibility(
              visible: model.isOfferValid,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
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
                        AppText.body2("Promo ${model.promoCode} Applied"),
                      ],
                    ),
                    verticalSpaceSmall,
                    Column(
                      children: [
                        AppText.body2("You saved"),
                        AppText.body2("INR ${model.savedAmount}"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            model.isOfferValid ? verticalSpaceMedium : Container(),
            model.isOfferValid
                ? const Divider(
                    color: colors.kcLightGreyBackground,
                    height: 5.0,
                    thickness: 5.0,
                  )
                : Container(),
            model.isOfferValid ? verticalSpaceMedium : Container(),

            // Start Date
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(startDateLabel),
                  verticalSpaceTiny,
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Calendar.png",
                      ),
                      horizontalSpaceSmall,
                      GestureDetector(
                        onTap: () =>
                            model.selectDate(context, model.datePickers),
                        child: Container(
                          width: 150.0,
                          color: Colors.transparent,
                          child: IgnorePointer(
                            child: AppInputField(
                              hint: "Select Date",
                              controller: model.datePickers,
                              //errorText: model.validUser(phoneController),
                              textInputType: TextInputType.name,
                              textCapitalization: TextCapitalization.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            spacedDividerSmall,

            // Days off
            Visibility(
              visible: model.selectedPlan != DogRunningPackage.One,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.body2(dayOffLabel),
                    verticalSpaceRegular,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DayItems(
                          day: 'Su',
                          selected: model.selectedDay1,
                          onTapped: model.setSelectedDay1,
                        ),
                        DayItems(
                          day: 'Mo',
                          selected: model.selectedDay2,
                          onTapped: model.setSelectedDay2,
                        ),
                        DayItems(
                          day: 'Tu',
                          selected: model.selectedDay3,
                          onTapped: model.setSelectedDay3,
                        ),
                        DayItems(
                          day: 'We',
                          selected: model.selectedDay4,
                          onTapped: model.setSelectedDay4,
                        ),
                        DayItems(
                          day: 'Th',
                          selected: model.selectedDay5,
                          onTapped: model.setSelectedDay5,
                        ),
                        DayItems(
                          day: 'Fr',
                          selected: model.selectedDay6,
                          onTapped: model.setSelectedDay6,
                        ),
                        DayItems(
                          day: 'Sa',
                          selected: model.selectedDay7,
                          onTapped: model.setSelectedDay7,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            model.selectedPlan != DogRunningPackage.One
                ? spacedDivider
                : Container(),

            // Timings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body1(runOneLabel),
                  verticalSpaceRegular,
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      TimingItems(
                        timing: timingsOne,
                        selected: model.selectedWeekdayOne,
                        onTapped: model.setSelectedWeekday1,
                      ),
                      TimingItems(
                        timing: timingsTwo,
                        selected: model.selectedWeekdayTwo,
                        onTapped: model.setSelectedWeekday2,
                      ),
                      TimingItems(
                        timing: timingsThree,
                        selected: model.selectedWeekdayThree,
                        onTapped: model.setSelectedWeekday3,
                      ),
                      TimingItems(
                        timing: timingsFour,
                        selected: model.selectedWeekdayFour,
                        onTapped: model.setSelectedWeekday4,
                      ),
                      TimingItems(
                        timing: timingsFive,
                        selected: model.selectedWeekdayFive,
                        onTapped: model.setSelectedWeekday5,
                      ),
                      // TimingItems(
                      //   timing: timingsSix,
                      //   selected: model.selectedWeekdaySix,
                      //   onTapped: model.setSelectedWeekday6,
                      // ),
                    ],
                  ),
                  model.dayFrequency == 2 ? verticalSpaceMedium : Container(),
                  model.dayFrequency == 2
                      ? AppText.body1(runTwoLabel)
                      : Container(),
                  model.dayFrequency == 2 ? verticalSpaceRegular : Container(),
                  Visibility(
                    visible: model.dayFrequency == 2,
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: [
                        TimingItems(
                          timing: timingsOne,
                          selected: model.selectedWeekendOne,
                          onTapped: model.setSelectedWeekend1,
                        ),
                        TimingItems(
                          timing: timingsTwo,
                          selected: model.selectedWeekendTwo,
                          onTapped: model.setSelectedWeekend2,
                        ),
                        TimingItems(
                          timing: timingsThree,
                          selected: model.selectedWeekendThree,
                          onTapped: model.setSelectedWeekend3,
                        ),
                        TimingItems(
                          timing: timingsFour,
                          selected: model.selectedWeekendFour,
                          onTapped: model.setSelectedWeekend4,
                        ),
                        TimingItems(
                          timing: timingsFive,
                          selected: model.selectedWeekendFive,
                          onTapped: model.setSelectedWeekend5,
                        ),
                        // TimingItems(
                        //   timing: timingsSix,
                        //   selected: model.selectedWeekendSix,
                        //   onTapped: model.setSelectedWeekend6,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            //
            Visibility(
              visible: model.previousRunnersAvailable,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.body2(previousRunnersLabel),
                    verticalSpaceSmall,
                    AppText.body1(
                      previousRunnersSubtitle,
                      color: colors.kcCaptionGreyColor,
                    ),
                    verticalSpaceRegular,
                    Container(
                      height: 100.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: model.previousRunners.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: RunnerItems(
                              name: model.previousRunners[index].name,
                              imageUrl: model.previousRunners[index].imageUrl,
                              selected: model.previousRunners[index].selected,
                              onTapped: () => model.selectPreviousWalker(index),
                            ),
                          );
                        },
                      ),
                    ),
                    verticalSpaceRegular,
                  ],
                ),
              ),
            ),

            // Total
            Container(
              height: 50.0,
              color: colors.primaryLight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.body2("$totalLabel : ₹ ${model.amount}"),
                  ],
                ),
              ),
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
        height: 100,
        width: 90,
        margin: EdgeInsets.symmetric(horizontal: 0.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: selected! ? colors.primary : colors.kcCaptionGreyColor,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              child: Image.network(imageUrl!),
            ),
            AppText.caption(
              name!,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class TimingItems extends StatelessWidget {
  const TimingItems({Key? key, this.timing, this.selected, this.onTapped})
      : super(key: key);
  final String? timing;
  final bool? selected;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 25.0,
        width: 70.0,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: selected! ? colors.primary : colors.kcLightGreyColor,
            width: 1,
          ),
        ),
        child: Center(
          child: AppText.caption(
            timing!,
            color: selected! ? colors.primary : colors.kcLightGreyColor,
          ),
        ),
      ),
    );
  }
}

class DayItems extends StatelessWidget {
  const DayItems({Key? key, this.day, this.selected, this.onTapped})
      : super(key: key);
  final String? day;
  final bool? selected;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: CircleAvatar(
        radius: 39.0 / 2,
        backgroundColor: selected! ? colors.primary : colors.white,
        child: CircleAvatar(
          radius: 38.0 / 2,
          backgroundColor: selected! ? colors.primary : colors.kcLightGreyColor,
          child: CircleAvatar(
            radius: 37.0 / 2,
            backgroundColor: selected! ? colors.primary : colors.white,
            child: AppText.body1(
              day!,
              color: selected! ? colors.white : colors.kcLightGreyColor,
            ),
          ),
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
    this.rate,
    this.rateLabel,
    this.value,
    this.groupValue,
    this.tap,
  }) : super(key: key);
  final DogRunningPackage? value;
  final DogRunningPackage? groupValue;
  final void Function(DogRunningPackage?)? tap;
  final String? title;
  final String? subtitle;
  final String? rate;
  final String? rateLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Radio<DogRunningPackage>(
          value: value!,
          groupValue: groupValue,
          onChanged: tap,
          activeColor: colors.primary,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body1(title!),
              AppText.caption(
                subtitle!,
                color: colors.kcCaptionGreyColor,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppText.body1(rate!),
              AppText.caption(
                rateLabel!,
                color: colors.kcCaptionGreyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
