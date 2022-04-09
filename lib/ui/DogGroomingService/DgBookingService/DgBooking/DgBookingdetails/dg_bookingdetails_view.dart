import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dg_doggroomingbooking_viewmodel.dart';

class DGBookingDetailsView
    extends ViewModelWidget<DGDogGroomingBookingViewModel> {
  @override
  Widget build(BuildContext context, DGDogGroomingBookingViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,

            // Start Date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body2(singleDateLabel),
                verticalSpaceRegular,
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => model.selectDate(context, model.datePickers),
                      child: Container(
                        child: Row(
                          children: [
                            horizontalSpaceSmall,
                            Image.asset(
                              "assets/images/calendar_grey.png",
                            ),
                            horizontalSpaceSmall,
                            Text(
                              model.datePickers.text,
                              style: TextStyle(
                                  fontSize: 14, color: colors.kcLightGreyColor),
                            ),
                          ],
                        ),
                        width: screenWidth(context) - 50,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: colors.kcLightGreyColor,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceMedium,

            // Timings
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body2(groomingTimeTitle),
                verticalSpaceRegular,
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    TimingItems(
                      timing: groomingTimingsOne,
                      selected: model.selectedWeekdayOne,
                      onTapped: model.setSelectedWeekday1,
                    ),
                    TimingItems(
                      timing: groomingTimingsTwo,
                      selected: model.selectedWeekdayTwo,
                      onTapped: model.setSelectedWeekday2,
                    ),
                    TimingItems(
                      timing: groomingTimingsThree,
                      selected: model.selectedWeekdayThree,
                      onTapped: model.setSelectedWeekday3,
                    ),
                    TimingItems(
                      timing: groomingTimingsFour,
                      selected: model.selectedWeekdayFour,
                      onTapped: model.setSelectedWeekday4,
                    ),
                    TimingItems(
                      timing: groomingTimingsFive,
                      selected: model.selectedWeekdayFive,
                      onTapped: model.setSelectedWeekday5,
                    ),
                    TimingItems(
                      timing: groomingTimingsSix,
                      selected: model.selectedWeekdaySix,
                      onTapped: model.setSelectedWeekday6,
                    ),
                    TimingItems(
                      timing: groomingTimingsSeven,
                      selected: model.selectedWeekdaySeven,
                      onTapped: model.setSelectedWeekday7,
                    ),
                    TimingItems(
                      timing: groomingTimingsEight,
                      selected: model.selectedWeekdayEight,
                      onTapped: model.setSelectedWeekday8,
                    ),
                  ],
                ),
              ],
            ),
            verticalSpaceMedium,
            verticalSpaceTiny,

            // Address
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body2(groomingDetailsSubtitle),
                verticalSpaceMedium,
                // Address 1
                AppText.body1(
                  addressLineOneLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  hint: addressLineOneHint,
                  controller: model.addressLineTwoController,
                  onChanged: model.secondPageValidation,
                  isBoxBorder: true,
                  suffix: GestureDetector(
                    onTap: model.changeAddress,
                    child: AppText.body2(
                      "Change",
                      color: colors.primary,
                    ),
                  ),
                  textInputType: TextInputType.name,
                  textCapitalization: TextCapitalization.none,
                ),
                verticalSpaceTiny,
                // Address 2
                AppText.body1(
                  addressLineTwoLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  hint: addressLineTwoHint,
                  controller: model.addressLineOneController,
                  onChanged: model.secondPageValidation,
                  isBoxBorder: true,
                  textInputType: TextInputType.name,
                  textCapitalization: TextCapitalization.none,
                ),
                verticalSpaceTiny,
                // Address 3
                AppText.body1(
                  addressLineThreeLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  hint: addressLineThreeHint,
                  controller: model.addressLineThreeController,
                  onChanged: model.secondPageValidation,
                  isBoxBorder: true,
                  textInputType: TextInputType.name,
                  textCapitalization: TextCapitalization.none,
                ),
                verticalSpaceTiny,
                AppText.body1(
                  phoneVerificationLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  hint: phoneVerificationHint,
                  controller: model.phoneController,
                  onChanged: model.secondPageValidation,
                  isBoxBorder: true,
                  textInputType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  maxLength: 10,
                ),
                verticalSpaceTiny,
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceRegular,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.titleBold("Sub total"),
                    AppText.titleBold("₹ ${model.subTotal}"),
                  ],
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.titleBold("DISCOUNT"),
                    AppText.titleBold("- ₹ ${model.discount}"),
                  ],
                ),
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.titleBold("Offer Applied"),
                    AppText.titleBold("- ₹ ${model.savedAmount}"),
                  ],
                ),
                verticalSpaceSmall,
                spacedDividerTiny,
                verticalSpaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.titleBold("Total"),
                    AppText.titleBold("₹ ${model.amount}"),
                  ],
                ),
              ],
            ),

            verticalSpaceLarge,
            verticalSpaceLarge,
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
        height: 40.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: selected! ? colors.primary : colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected! ? colors.primary : colors.kcLightGreyColor,
            width: 1,
          ),
        ),
        child: Center(
          child: AppText.caption(
            timing!,
            color: selected! ? colors.white : colors.kcLightGreyColor,
          ),
        ),
      ),
    );
  }
}
