import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'dr_payment_viewmodel.dart';

class DRPaymentView extends StatelessWidget {
  const DRPaymentView({Key? key, required this.amount, required this.bookingId})
      : super(key: key);
  final int amount;
  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DRPaymentViewModel>.reactive(
      onModelReady: (model) {
        model.startState();
        model.getPaymentDetails();
      },
      onDispose: (model) {
        model.endState();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpaceRegular,
              // Heading
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  // Positioned(
                  //   left: 25,
                  //   child: IconButton(
                  //     padding: EdgeInsets.zero,
                  //     alignment: Alignment.centerLeft,
                  //     icon: Icon(
                  //       Icons.arrow_back,
                  //       color: Colors.black,
                  //     ),
                  //     onPressed: model.navigateBack,
                  //   ),
                  // ),
                  Center(
                    child: AppText.headingThree(
                      "Payment",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              spacedDividerSmall,
              verticalSpaceSmall,

              // Progress
              Visibility(
                visible: !model.startPayment,
                child: CircularProgressIndicator(
                  color: colors.primary,
                ),
              ),

              Spacer(),

              //
              Visibility(
                visible: model.paymentCompleted,
                child: Icon(
                  Icons.check_circle,
                  color: colors.primary,
                  size: 150,
                ),
              ),
              Visibility(
                visible: model.paymentFailed,
                child: Icon(
                  Icons.error_outline_outlined,
                  color: colors.red,
                  size: 150,
                ),
              ),

              Spacer(),

              // Success - button
              Visibility(
                visible: model.paymentCompleted,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: model.toMyBookings,
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            myAppointmentsTitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),

              // Failed - button
              Visibility(
                visible: model.paymentFailed,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: model.openCheckout,
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Try again",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
                      GestureDetector(
                        onTap: model.toMyBookings,
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colors.primary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            myAppointmentsTitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DRPaymentViewModel(amount, bookingId),
    );
  }
}
