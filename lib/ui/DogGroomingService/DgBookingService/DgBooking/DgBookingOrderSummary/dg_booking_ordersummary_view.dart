import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dg_doggroomingbooking_viewmodel.dart';
class DGBookingOrderSummaryView
    extends ViewModelWidget<DGDogGroomingBookingViewModel> {
  @override
  Widget build(BuildContext context, DGDogGroomingBookingViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,

            // Selected service details
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: colors.kcLightGreyColor,
                  width: 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                  child: Image.asset("assets/images/dog_grooming_icon.png"),
                  backgroundColor: Color(0xffFAC9D7),
                ),
                horizontalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  verticalSpaceTiny,
                  AppText.body2(model.description),
                  AppText.caption(model.subtitle),
                  verticalSpaceSmall,
                  Row(children: [
                    AppText.captionBold("Date: "),
                    AppText.caption(
                      DateFormat("dd/MM/yyyy").format(model.pickedDate),
                    ),
                    horizontalSpaceTiny,
                    AppText.captionBold("Time: "),
                    AppText.caption(model.weekDayTiming),
                  ],),
                  verticalSpaceSmall,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    AppText.captionBold("Address: "),
                    AppText.caption(model.addressLineOneController.text+","),
                  ],),
                  AppText.caption(model.addressLineTwoController.text)
                ],)
                ],
              )
            ),
            verticalSpaceMedium,
            AppText.titleBold("Select Payment Method"),
            verticalSpaceMedium,
            PaymentMethod(model: model, thisMethodIndex: 0),
            verticalSpaceSmall,
            PaymentMethod(model: model, thisMethodIndex: 1),
            verticalSpaceMedium,
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFCEE3E6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.all(15),
              child:Column(children: [
                AppText.headingThree("Look Fabulous Guarantee", color: Color(0xFFFF7597),),
                verticalSpaceSmall,
                Row(children: [
                  Image.asset("assets/images/certificate.png", height: 85,),
                  horizontalSpaceSmall,
                  Expanded(child: AppText.caption("We promise that you’ll love how your pet looks after our grooming service, or we’ll do whatever it takes to make it right. We have a 100% refund policy.")),
                ],),
              ],
              )
            ), 
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppText.body("Subtotal"),
                AppText.body("₹"+model.subTotal.toInt().toString()+"/-"),
              ],),
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: Color(0xFFCAE9CF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppText.body("You Save"),
                AppText.body("₹"+model.discount.toInt().toString()+"/-"),
              ],),
            ),
            model.savedAmount>0 ? Container(
              padding: EdgeInsets.all(8),
              color: Color(0xFFCAE9CF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppText.body("Coupon Discount"),
                AppText.body("₹"+model.savedAmount.toInt().toString()+"/-"),
              ],),
            ): SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppText.body("Total Price"),
                AppText.body("₹"+model.amount.toInt().toString()+"/-"),
              ],),
            ),
            verticalSpaceMedium,

            //Enter offer code
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
                  Row(children: [
                    AppText.captionBold("PAWSOMEOFFER"),
                    horizontalSpaceSmall,
                    AppText.captionBold("ADDITIONAL 10% OFF", color: Color(0xfffb7e9c)),
                  ],),
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
            verticalSpaceLarge
          ],
        ),
      ),
    );
  }
}

class PaymentMethod extends StatefulWidget {
  DGDogGroomingBookingViewModel model;
  int thisMethodIndex;
  PaymentMethod({
    required this.model,
    required this.thisMethodIndex,
  });

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.model.selectPaymentMethod(widget.thisMethodIndex);
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: widget.model.paymentMethodIndex ==widget.thisMethodIndex ? Color(0xffc39c9c) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: colors.kcLightGreyColor,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: widget.model.paymentMethodIndex == widget.thisMethodIndex ? Color(0xffc39c9c) : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff707070),
                  width: 1,
                ),
              ),
              child: Center(
                child: Container(decoration: BoxDecoration(
                  color: widget.model.paymentMethodIndex ==widget.thisMethodIndex ? Color(0xFFF696B1) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 4,
                width:4
              ),
            ),),
            horizontalSpaceSmall,
            AppText.captionBold(
              ["Pay Now Add Debit/Credit/ATM Card",
              "Pay Later (after the service)",][widget.thisMethodIndex]
              ),
          ],
        )
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
