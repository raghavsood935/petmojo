import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrBooking/dr_dogrunningbooking_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';

import 'dr_opening_viewmodel.dart';

class DROpening extends StatelessWidget {
  const DROpening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DROpeningViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: model.tryNow
            ?DROpeningTryNow()
            :DRDogRunningBookingView()
      ),
      viewModelBuilder: () => DROpeningViewModel(),
    );
  }
}

class DROpeningTryNow extends StatelessWidget {
  const DROpeningTryNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DROpeningViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //back button
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                verticalSpaceRegular,
                // Heading
                Container(
                  height: 80,
                  child: Image.asset(
                      "assets/images/service_opening/opening_running_first_text.png"),
                ),
                verticalSpaceRegular,
                //
                Container(
                  height: 150,
                  child: Image.asset(
                      "assets/images/service_opening/opening_running_second_text.png"),
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_medal.png"),
                        ),
                        Container(
                          child: Image.asset(
                              "assets/images/service_opening/opening_training_third_text.png"),
                        ),
                      ],
                    ),
                    //verticalSpaceRegular,
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                              "assets/images/service_opening/opening_running_dog.png"),
                        ),
                        Container(
                          child: Image.asset(
                              "assets/images/service_opening/opening_running_fourth_text.png"),
                        ),
                      ],
                    ),
                  ],
                ),

                //
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                      "assets/images/service_opening/opening_people.png"),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    child: Image.asset(
                        "assets/images/service_opening/opening_training_fifth_text.png"),
                  ),
                ),
                verticalSpaceTiny,
                verticalSpace(80),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 70,
          child: Column(
            children: [
              GestureDetector(
                onTap:()=> model.toDogRunningBooking(context),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Try Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DROpeningViewModel(),
    );
  }
}
