import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dt_dogtrainingbooking_viewmodel.dart';

class DTBookingDetailsView
    extends ViewModelWidget<DTDogTrainingBookingViewModel> {
  @override
  Widget build(BuildContext context, DTDogTrainingBookingViewModel model) {
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
                AppText.body2(startDateLabel),
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

            // // Timings
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     AppText.body2(trainingTimeTitle),
            //     verticalSpaceRegular,
            //     Wrap(
            //       spacing: 10.0,
            //       runSpacing: 10.0,
            //       children: [
            //         TimingItems(
            //           timing: timingsOne,
            //           selected: model.selectedWeekdayOne,
            //           onTapped: model.setSelectedWeekday1,
            //         ),
            //         TimingItems(
            //           timing: timingsTwo,
            //           selected: model.selectedWeekdayTwo,
            //           onTapped: model.setSelectedWeekday2,
            //         ),
            //         TimingItems(
            //           timing: timingsThree,
            //           selected: model.selectedWeekdayThree,
            //           onTapped: model.setSelectedWeekday3,
            //         ),
            //         TimingItems(
            //           timing: timingsFour,
            //           selected: model.selectedWeekdayFour,
            //           onTapped: model.setSelectedWeekday4,
            //         ),
            //         TimingItems(
            //           timing: timingsFive,
            //           selected: model.selectedWeekdayFive,
            //           onTapped: model.setSelectedWeekday5,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            // verticalSpaceMedium,
            // verticalSpaceTiny,

            // Address
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body2(bookingDetailsSubtitle),
                verticalSpaceMedium,
                // Address 1
                AppText.body1(
                  addressLineOneLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  readOnly: true,
                  hint: addressLineOneHint,
                  controller: model.addressLineTwoController,
                  onChanged: model.secondPageValidation,
                  trailing: (model.companyAvailable)
                      ? Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      : null,
                  suffix: model.companyAvailable == false
                      ? GestureDetector(
                          onTap: model.changeAddress,
                          child: AppText.body2(
                            "Change",
                            color: colors.primary,
                          ),
                        )
                      : null,
                  fillColor: (model.companyAvailable
                      ? Color(0xFFEDF9F3)
                      : Colors.white),
                  isBoxBorder: true,
                  textInputType: TextInputType.name,
                  textCapitalization: TextCapitalization.none,
                ),
                Transform(
                  transform: Matrix4.translationValues(0, -15, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: model.companyAvailable
                        ? GestureDetector(
                            onTap: model.changeAddress,
                            child: AppText.body2(
                              "Change",
                              color: colors.primary,
                            ),
                          )
                        : null,
                  ),
                ),
                verticalSpaceTiny,
                // Address 2
                AppText.body1(
                  addressLineTwoLabel,
                ),
                verticalSpaceSmall,
                AppInputField(
                  hint: addressLineTwoHint,
                  fillColor:
                      (model.isAddressValid) ? Color(0xFFEDF9F3) : Colors.white,
                  trailing: (model.isAddressValid)
                      ? Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      : SizedBox(),
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
                  fillColor: Colors.white,
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
                  fillColor:
                      (model.isPhoneValid) ? Color(0xFFEDF9F3) : Colors.white,
                  trailing: (model.isPhoneValid)
                      ? Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      : SizedBox(),
                  hint: phoneVerificationHint,
                  controller: model.phoneController,
                  onChanged: model.secondPageValidation,
                  isBoxBorder: true,
                  textInputType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  maxLength: 10,
                ),
                verticalSpaceTiny,

                //Added recently
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
                // AppText.body2("Offers Available!! 🎉🎉🎉🎁🎁🎁"),
                // verticalSpaceRegular,
                // AppInputField(
                //   hint: "Enter Promo Code",
                //   controller: model.promoCodeController,
                //   trailing: model.isCouponProcessing
                //       ? Transform.scale(
                //           scale: 0.6,
                //           child: CircularProgressIndicator(
                //             color: colors.primary,
                //           ),
                //         )
                //       : Icon(
                //           Icons.arrow_forward_rounded,
                //           color: colors.primary,
                //         ),
                //   trailingTapped: model.applyCoupon,
                //   isBoxBorder: true,
                //   textInputType: TextInputType.name,
                //   textCapitalization: TextCapitalization.none,
                // ),
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
