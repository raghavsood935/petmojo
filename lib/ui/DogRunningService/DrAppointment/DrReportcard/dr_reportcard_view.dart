import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/enum/selectedStart.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

import 'dr_reportcard_viewmodel.dart';

class DRReportCardView extends StatelessWidget {
  DRReportCardView(
      {Key? key,
        required this.noOfDogs,
        required this.dogs,
        required this.date,
        required this.walkNumber,
        required this.appointmentId})
      : super(key: key);
  final int noOfDogs;
  final List<String> dogs;
  final DateTime date;
  final WalkNumber walkNumber;
  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DRReportCardViewModel>.reactive(
      viewModelBuilder: () =>
          DRReportCardViewModel(noOfDogs, dogs, date, walkNumber, appointmentId),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: model.noOfDogs == 1
              ? SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: colors.primaryLight,
                  child: Column(
                    children: [
                      verticalSpaceRegular,
                      // Heading
                      Stack(
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
                            child: AppText.headingThree(
                              reportCardTitle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceRegular,

                      // Division 1 - Top Bar
                      Container(
                        height: 27,
                        decoration: BoxDecoration(
                          color: colors.primary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            horizontalSpaceRegular,
                            AppText.body1(
                              model.day,
                              color: colors.white,
                            ),
                            AppText.body2(
                              "  .  ",
                              color: colors.white,
                            ),
                            AppText.body1(
                              "${model.dateString}th",
                              color: colors.white,
                            ),
                            AppText.body2(
                              "  .  ",
                              color: colors.white,
                            ),
                            AppText.body1(
                              model.time,
                              color: colors.white,
                            ),
                            horizontalSpaceRegular,
                          ],
                        ),
                      ),
                      verticalSpaceRegular,
                      const Divider(color: Colors.blueGrey, height: 5.0),
                    ],
                  ),
                ),
                verticalSpaceRegular,

                // Division 2 - Report Card Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/images/tamely_logo.png"),
                    ),
                    horizontalSpaceSmall,
                    AppText.subheading(
                      reportCardSubtitle,
                    ),
                  ],
                ),
                verticalSpaceRegular,

                // Body
                ReportItem(
                  distance: "${model.distance} km",
                  timeTook: "${model.timeTook} min",
                  poo: model.dogPoo[0],
                  pee: model.dogPee[0],
                  gotRating: model.gotRating,
                  rating: model.rating,
                  dogPictureUrl: model.dogPicture,
                  mapPictureUrl: model.mapPicture,
                  starOnTaped: model.starOnTaped,
                ),
              ],
            ),
          )
              : Column(
            children: [
              Container(
                color: colors.primaryLight,
                child: Column(
                  children: [
                    verticalSpaceRegular,
                    // Heading
                    Stack(
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
                          child: AppText.headingThree(
                            reportCardTitle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceRegular,

                    // Division 1 - Top Bar
                    Container(
                      height: 27,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          horizontalSpaceRegular,
                          AppText.body1(
                            model.day,
                            color: colors.white,
                          ),
                          AppText.body2(
                            "  .  ",
                            color: colors.white,
                          ),
                          AppText.body1(
                            "${model.dateString}th",
                            color: colors.white,
                          ),
                          AppText.body2(
                            "  .  ",
                            color: colors.white,
                          ),
                          AppText.body1(
                            model.time,
                            color: colors.white,
                          ),
                          horizontalSpaceRegular,
                        ],
                      ),
                    ),
                    verticalSpaceRegular,
                    const Divider(color: Colors.blueGrey, height: 5.0),
                  ],
                ),
              ),
              verticalSpaceRegular,

              // Division 2 - Report Card Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/images/tamely_logo.png"),
                  ),
                  horizontalSpaceSmall,
                  AppText.subheading(
                    reportCardSubtitle,
                  ),
                ],
              ),
              verticalSpaceRegular,

              // body
              DefaultTabController(
                length: 2,
                child: Flexible(
                  child: Scaffold(
                    backgroundColor: colors.white,
                    appBar: TabBar(
                      labelColor: colors.primary,
                      unselectedLabelColor: colors.kcCaptionGreyColor,
                      tabs: [
                        Tab(
                          text: "${model.dogs[0]} $dogOneTitle",
                        ),
                        Tab(
                          text: "${model.dogs[1]} $dogTwoTitle",
                        ),
                      ],
                    ),
                    body: TabBarView(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 25),
                          child: ReportItem(
                            distance: "${model.distance} km",
                            timeTook: "${model.timeTook} min",
                            poo: model.dogPoo[0],
                            pee: model.dogPee[0],
                            gotRating: model.gotRating,
                            rating: model.rating,
                            dogPictureUrl: model.dogPicture,
                            mapPictureUrl: model.mapPicture,
                            starOnTaped: model.starOnTaped,
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 25),
                          child: ReportItem(
                            distance: "${model.distance} km",
                            timeTook: "${model.timeTook} min",
                            poo: model.dogPoo[1],
                            pee: model.dogPee[1],
                            gotRating: model.gotRating,
                            rating: model.rating,
                            dogPictureUrl: model.dogPicture,
                            mapPictureUrl: model.mapPicture,
                            starOnTaped: model.starOnTaped,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReportItem extends StatelessWidget {
  const ReportItem(
      {Key? key,
        this.distance,
        this.timeTook,
        this.poo,
        this.pee,
        this.gotRating,
        this.rating,
        this.dogPictureUrl,
        this.mapPictureUrl,
        this.starOnTaped})
      : super(key: key);
  final String? distance;
  final String? timeTook;
  final bool? poo;
  final bool? pee;
  final bool? gotRating;
  final int? rating;
  final String? dogPictureUrl;
  final String? mapPictureUrl;
  final void Function(SelectedStar)? starOnTaped;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Division 3 - Map Pic
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.white,
                border: Border.all(
                  color: colors.primary,
                  width: 1,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                color: colors.primaryLight,
                child: Image.network(dogPictureUrl!),
              ),
            ),
          ),
          verticalSpaceRegular,

          // Division 4 - Dog Pic
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: colors.white,
                    border: Border.all(
                      color: colors.primary,
                      width: 1,
                    ),
                  ),
                  child: Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    color: colors.primaryLight,
                    child: Image.network(mapPictureUrl!),
                  ),
                ),

                // Division 5 -
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // one
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30 / 2,
                          child:
                          Image.asset("assets/images/report_distance.png"),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                            color: colors.primaryLight,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: AppText.body1(
                            distance!,
                            color: colors.primary,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceRegular,
                    // one
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30 / 2,
                          child: Image.asset("assets/images/report_time.png"),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                            color: colors.primaryLight,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: AppText.body1(
                            timeTook!,
                            color: colors.primary,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceRegular,
                    // one
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30 / 2,
                          child: Image.asset("assets/images/report_poo.png"),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                            color: colors.primaryLight,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText.body1(
                                "Poo ",
                                color: colors.primary,
                                textAlign: TextAlign.center,
                              ),
                              poo!
                                  ? Icon(
                                Icons.check_circle_outline_rounded,
                                size: 15.0,
                                color: colors.green30,
                              )
                                  : Icon(
                                Icons.cancel_rounded,
                                size: 15.0,
                                color: colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceRegular,
                    // one
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30 / 2,
                          child: Image.asset("assets/images/report_pee.png"),
                        ),
                        horizontalSpaceSmall,
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                            color: colors.primaryLight,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText.body1(
                                "Pee ",
                                color: colors.primary,
                                textAlign: TextAlign.center,
                              ),
                              pee!
                                  ? Icon(
                                Icons.check_circle_outline_rounded,
                                size: 15.0,
                                color: colors.green30,
                              )
                                  : Icon(
                                Icons.cancel_rounded,
                                size: 15.0,
                                color: colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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

          // Division 6 - Rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.primaryLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppText.body2(
                    walkRatingTitle,
                    textAlign: TextAlign.center,
                  ),
                  gotRating!
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color:
                        rating! >= 1 ? colors.primary : colors.white,
                        size: 55.0,
                      ),
                      Icon(
                        Icons.star,
                        color:
                        rating! >= 2 ? colors.primary : colors.white,
                        size: 55.0,
                      ),
                      Icon(
                        Icons.star,
                        color:
                        rating! >= 3 ? colors.primary : colors.white,
                        size: 55.0,
                      ),
                      Icon(
                        Icons.star,
                        color:
                        rating! >= 4 ? colors.primary : colors.white,
                        size: 55.0,
                      ),
                      Icon(
                        Icons.star,
                        color:
                        rating! >= 5 ? colors.primary : colors.white,
                        size: 55.0,
                      ),
                    ],
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => starOnTaped!(SelectedStar.One),
                        child: Icon(
                          Icons.star,
                          color: rating! >= 1
                              ? colors.primary
                              : colors.white,
                          size: 55.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => starOnTaped!(SelectedStar.Two),
                        child: Icon(
                          Icons.star,
                          color: rating! >= 2
                              ? colors.primary
                              : colors.white,
                          size: 55.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => starOnTaped!(SelectedStar.Three),
                        child: Icon(
                          Icons.star,
                          color: rating! >= 3
                              ? colors.primary
                              : colors.white,
                          size: 55.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => starOnTaped!(SelectedStar.Four),
                        child: Icon(
                          Icons.star,
                          color: rating! >= 4
                              ? colors.primary
                              : colors.white,
                          size: 55.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => starOnTaped!(SelectedStar.Five),
                        child: Icon(
                          Icons.star,
                          color: rating! >= 5
                              ? colors.primary
                              : colors.white,
                          size: 55.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          verticalSpaceRegular,
        ],
      ),
    );
  }
}
