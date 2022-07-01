import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/DogRunningService/DrBookingService/DrBooking/dr_dogrunningbooking_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';

import '../../../../widgets/app_text.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //back button
                Padding(
                  padding: commonPadding,
                  child: Align(
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
                ),
                //verticalSpaceRegular,
                // One
                Padding(
                  padding: commonPadding,
                  child: Container(
                    height: 80,
                    child: Image.asset(
                        "assets/images/service_opening/opening_trining_one.png"),
                  ),
                ),
                verticalSpaceRegular,
                // Two
                Padding(
                  padding: commonPadding,
                  child: Container(
                    height: 80,
                    child: Image.asset(
                        "assets/images/service_opening/opening_trining_two.png"),
                  ),
                ),
                verticalSpaceRegular,
                // Three
                Padding(
                  padding: commonPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        child: Image.asset(
                            "assets/images/service_opening/opening_trining_three.png"),
                      ),
                    ],
                  ),
                ),
                verticalSpaceRegular,
                // Four
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: screenWidth(context),
                          color: colors.primaryLight,
                          child: Center(
                            child: AppText.title(
                              "Top #1 Dog Trainers",
                              color: colors.kcPrimaryTextColor,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: screenWidth(context),
                          color: colors.primaryLight,
                          child: Center(
                            child: AppText.title(
                              "Manage sessions on App",
                              color: colors.kcPrimaryTextColor,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: screenWidth(context),
                          color: colors.primaryLight,
                          child: Center(
                            child: AppText.title(
                              "Photos/videos shared",
                              color: colors.kcPrimaryTextColor,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: screenWidth(context),
                          color: colors.primaryLight,
                          child: Center(
                            child: AppText.title(
                              "Secure Cashless payment",
                              color: colors.kcPrimaryTextColor,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: screenWidth(context),
                          color: colors.primaryLight,
                          child: Center(
                            child: AppText.title(
                              "24*7 support",
                              color: colors.kcPrimaryTextColor,
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                      ],
                    ),
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Image.asset(
                          "assets/images/service_opening/opening_trining_paw_left_two.png"),
                    ),
                    Positioned(
                      top: 50,
                      right: 15,
                      child: Image.asset(
                          "assets/images/service_opening/opening_trining_paw_right_one.png"),
                    ),
                    Positioned(
                      top: 100,
                      left: 20,
                      child: Image.asset(
                          "assets/images/service_opening/opening_trining_paw_left_two.png"),
                    ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Image.asset(
                          "assets/images/service_opening/opening_trining_paw_right_two.png"),
                    ),
                    Positioned(
                      top: 250,
                      left: 20,
                      child: Image.asset(
                          "assets/images/service_opening/opening_trining_paw_left_one.png"),
                    ),
                  ],
                ),
                // Stack(
                //   children: [
                //     Container(
                //       padding: EdgeInsets.symmetric(horizontal: 20),
                //       height: 50,
                //       width: screenWidth(context),
                //       color: colors.primaryLight,
                //       child: Center(
                //         child: AppText.title(
                //           "Top #1 Dog Trainers",
                //           color: colors.kcPrimaryTextColor,
                //         ),
                //       ),
                //     ),
                //     Positioned(
                //       bottom: 0,
                //       left: 20,
                //       child: Image.asset(
                //           "assets/images/service_opening/opening_trining_paw_left_one.png"),
                //     ),
                //   ],
                // ),
                // verticalSpaceSmall,
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   height: 50,
                //   width: screenWidth(context),
                //   color: colors.primaryLight,
                //   child: Center(
                //     child: AppText.title(
                //       "Top #1 Dog Trainers",
                //       color: colors.kcPrimaryTextColor,
                //     ),
                //   ),
                // ),
                // verticalSpaceRegular,
                // Five
                Padding(
                  padding: commonPadding,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                        "assets/images/service_opening/opening_people.png"),
                  ),
                ),
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
