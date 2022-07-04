import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../../enum/dog_training_package.dart';
import 'dt_upgradeplan_viewmodel.dart';
import 'package:tamely/util/String.dart';

class DTUpgradePlanView extends StatelessWidget {
  const DTUpgradePlanView({
    Key? key,
    required this.appointmentId,
    required this.selectedPackage,
    required this.frequency,
    required this.description,
    required this.address1,
    required this.address2,
    required this.dogs,
    required this.partnerName,
    required this.amount,
    required this.discount,
    required this.previousAmount,
    required this.newTotalAmount,
  }) : super(key: key);
  final String appointmentId;
  final DogTrainingPackage selectedPackage;
  final int frequency;
  final String description;
  final String address1;
  final String address2;
  final List<String> dogs;
  final String partnerName;
  final double amount;
  final double discount;
  final double previousAmount;
  final double newTotalAmount;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTUpgradePlanViewModel>.reactive(
      viewModelBuilder: () => DTUpgradePlanViewModel(
        appointmentId,
        selectedPackage,
        frequency,
        description,
        address1,
        address2,
        dogs,
        partnerName,
        amount,
        discount,
        previousAmount,
        newTotalAmount,
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
                          "Upgrade Plan",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  verticalSpaceMedium,
                  // Top box
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
                          child:
                              Image.asset("assets/images/running_package.png"),
                          backgroundColor: Color(0xffFAC9D7),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.body2(model.description),
                            verticalSpaceTiny,
                            AppText.caption(
                              "Hooray! Price of previous training \nwill be deducted after upgrading \nto new Package",
                              textAlign: TextAlign.start,
                            ),
                            verticalSpaceSmall,
                            Row(
                              children: [
                                AppText.captionBold("Date: "),
                                AppText.caption(
                                  DateFormat("dd/MM/yyyy")
                                      .format(model.currentDate),
                                ),
                                horizontalSpaceRegular,
                                AppText.captionBold("Time: "),
                                AppText.caption(
                                  DateFormat("h:mm a")
                                      .format(model.currentDate),
                                ),
                              ],
                            ),
                            verticalSpaceSmall,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.captionBold("Address: "),
                                AppText.caption(model.address1 + ","),
                              ],
                            ),
                            AppText.caption(model.address2)
                          ],
                        )
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  // Booking Details
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ExpansionTile(
                      iconColor: colors.black,
                      collapsedIconColor: colors.black,
                      initiallyExpanded: true,
                      title: AppText.body2(
                        bookingDetailsTitle,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              model.dogs.length == 1
                                  ? Column(
                                      children: [
                                        BookingItem(
                                          detailName: "Pet Name",
                                          detailValue: "${model.dogs[0]}",
                                          clickable: true,
                                          onTapped: model.toDogProfileOne,
                                        ),
                                        verticalSpaceRegular,
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        BookingItem(
                                          detailName: "Pet 1 Name",
                                          detailValue: "${model.dogs[0]}",
                                          clickable: true,
                                          onTapped: model.toDogProfileOne,
                                        ),
                                        verticalSpaceRegular,
                                        BookingItem(
                                          detailName: "Pet 2 Name",
                                          detailValue: "${model.dogs[1]}",
                                          clickable: true,
                                          onTapped: model.toDogProfileOne,
                                        ),
                                        verticalSpaceRegular,
                                      ],
                                    ),
                              BookingItem(
                                detailName: "Trainer Name",
                                detailValue: model.partnerName,
                                clickable: true,
                                onTapped: model.toPartnerProfile,
                              ),
                              verticalSpaceRegular,
                              // BookingItem(
                              //   detailName: "Invoice",
                              //   detailValue: "See my Invoice",
                              //   clickable: true,
                              //   onTapped: model.toDogProfileOne,
                              // ),
                              //verticalSpaceRegular
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium,

                  // Payment Details
                  PaymentDetails(
                    subTotal: model.amount,
                    youSave: model.discount,
                    previousAmount: model.previousAmount,
                    totalPrice: model.newTotalAmount,
                  ),
                  verticalSpaceMedium,

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
                model.onPayNowPressed();
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
                  "Pay Now",
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

class BookingItem extends StatelessWidget {
  const BookingItem(
      {Key? key,
      this.detailName,
      this.detailValue,
      this.clickable,
      this.onTapped})
      : super(key: key);
  final String? detailName;
  final String? detailValue;
  final bool? clickable;
  final void Function()? onTapped;
  final int ratingNew = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: AppText.body1(detailName!)),
        horizontalSpaceMedium,
        clickable!
            ? GestureDetector(
                onTap: onTapped,
                child: AppText.body1(
                  detailValue!,
                  color: colors.primary,
                ),
              )
            : Expanded(
                child: (detailValue != "")
                    ? AppText.body1(
                        detailValue!,
                        color: colors.kcCaptionGreyColor,
                        textAlign: TextAlign.right,
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star,
                                color: ratingNew >= 1
                                    ? colors.primary
                                    : colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ratingNew >= 2
                                    ? colors.primary
                                    : colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ratingNew >= 3
                                    ? colors.primary
                                    : colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ratingNew >= 4
                                    ? colors.primary
                                    : colors.white,
                                size: 20.0,
                              ),
                              Icon(
                                Icons.star,
                                color: ratingNew >= 5
                                    ? colors.primary
                                    : colors.white,
                                size: 20.0,
                              ),
                            ],
                          ),
                          AppText.body1(
                            "4.9/5",
                            color: colors.primary,
                          )
                        ],
                      )),
      ],
    );
  }
}

class PaymentDetails extends StatelessWidget {
  PaymentDetails({
    Key? key,
    required this.subTotal,
    required this.youSave,
    required this.previousAmount,
    required this.totalPrice,
  }) : super(key: key);

  final double subTotal;
  final double youSave;
  final double previousAmount;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // One
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body("Subtotal"),
                AppText.body("₹" + subTotal.toString() + "/-"),
              ],
            ),
          ),
          // Two
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.body("You Save"),
                AppText.body("₹" + youSave.toString() + "/-"),
              ],
            ),
          ),
          //Three
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Color(0xFFCAE9CF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.bodyBold("Previous Package Amount"),
                AppText.bodyBold(
                  "₹" + "$previousAmount" + "/-",
                  color: colors.green70,
                ),
              ],
            ),
          ),
          // Four
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.bodyBold("Total Price"),
                AppText.bodyBold(
                  "₹" + "$totalPrice" + "/-",
                  color: colors.primary,
                ),
              ],
            ),
          ),
        ],
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
