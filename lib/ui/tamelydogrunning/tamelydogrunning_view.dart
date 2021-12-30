import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/ui/tamelydogrunning/tamelydogrunning_viewmodel.dart';
import 'package:tamely/ui/tamelydogrunning/tamelyoverview/tamelyoverview_view.dart';
import 'package:tamely/ui/tamelydogrunning/tamelyratechart/tamelyratechart_view.dart';
import 'package:tamely/ui/tamelydogrunning/tamelyreviews/tamelyreviews_view.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';

class TamelyDogRunnersView extends StatelessWidget {
  const TamelyDogRunnersView({Key? key, required this.currentLocation})
      : super(key: key);
  final LatLng currentLocation;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TamelyDogRunnersViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // Head
              Container(
                width: screenWidth(context),
                decoration: BoxDecoration(color: colors.lightBackgroundColor),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      left: 25,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: model.navigateBack,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 70,
                        width: 90,
                        child: Image.asset("assets/images/mini.png"),
                      ),
                    ),
                    // Positioned(
                    //   right: 25,
                    //   child: IconButton(
                    //     padding: EdgeInsets.zero,
                    //     alignment: Alignment.centerRight,
                    //     icon: Icon(
                    //       Icons.menu,
                    //       color: Colors.black,
                    //     ),
                    //     onPressed: model.navigateBack,
                    //   ),
                    // ),
                  ],
                ),
              ),

              // Head
              Container(
                width: screenWidth(context),
                decoration: BoxDecoration(color: colors.lightBackgroundColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.body2(tamelyTitle),
                          horizontalSpaceSmall,
                          AppText.caption(
                            dogRunningTitle,
                            color: colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.caption(
                            "from ",
                            color: colors.kcCaptionGreyColor,
                          ),
                          AppText.subheading(
                            "₹ 300",
                          ),
                          AppText.caption(
                            "/walk",
                            color: colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      AppText.body1(
                        tamelyDogRunningSubtitle,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpaceRegular,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: colors.primary,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: AppText.caption(
                                  "${model.noOfJobs.toString()} Jobs done"),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: colors.primary,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: colors.grad1Color,
                                  ),
                                  AppText.caption(
                                      " ${model.noOfRating.toString()} Rating"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: colors.primary,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: AppText.caption(
                                  "${model.noOfRepeatClients.toString()} repeat clients"),
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                    ],
                  ),
                ),
              ),

              // body
              DefaultTabController(
                length: 3,
                child: Flexible(
                  child: Scaffold(
                    backgroundColor: colors.white,
                    appBar: TabBar(
                      labelColor: colors.primary,
                      unselectedLabelColor: colors.kcCaptionGreyColor,
                      tabs: [
                        Tab(
                          text: overviewTitle,
                        ),
                        Tab(
                          text: reviewsTitle,
                        ),
                        Tab(
                          text: rateChartTitle,
                        ),
                      ],
                    ),
                    body: TabBarView(
                      children: [
                        TamelyOverviewView(
                          currentLocation: currentLocation,
                        ),
                        TamelyReviewsView(
                          currentLocation: currentLocation,
                        ),
                        TamelyRateChartView(
                          currentLocation: currentLocation,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => TamelyDogRunnersViewModel(currentLocation),
    );
  }
}
