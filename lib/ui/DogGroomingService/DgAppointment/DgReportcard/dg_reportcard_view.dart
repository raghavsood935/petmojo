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

import 'dg_reportcard_viewmodel.dart';

class DGReportCardView extends StatelessWidget {
  DGReportCardView(
      {Key? key, required this.appointmentId, required this.sessionNo})
      : super(key: key);
  final String appointmentId;
  final int sessionNo;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DGReportCardViewModel>.reactive(
      viewModelBuilder: () => DGReportCardViewModel(appointmentId, sessionNo),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
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
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                                onPressed: model.navigateBack,
                              ),
                            ),
                            Center(
                              child: AppText.headingThree(
                                "Session Complete",
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
                        AppText.subheading(
                          "Training Report card",
                        ),
                        verticalSpaceRegular,
                      ],
                    ),
                  ),

                  // Dog Picture
                  Container(
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
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      color: colors.primaryLight,
                      child: Image.network(model.dogPicture),
                    ),
                  ),
                  verticalSpaceRegular,

                  // Details
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: colors.kcCaptionGreyColor,
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0, // Move to right 10  horizontally
                            0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        verticalSpaceSmall,
                        BookingItem(
                          detailName: "Pet Name",
                          detailValue: "${model.dogs[0]}",
                        ),
                        verticalSpaceSmall,
                        BookingItem(
                          detailName: "Duration",
                          detailValue: "${model.duration}",
                        ),
                        verticalSpaceSmall,
                        BookingItem(
                          detailName: "Session No",
                          detailValue: "${model.sessionNo}",
                        ),
                        verticalSpaceSmall,
                      ],
                    ),
                  ),
                  verticalSpaceRegular,

                  // Division 6 - Rating
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   //height: 150,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       verticalSpaceRegular,
                  //       AppText.body2(
                  //         walkRatingTitle,
                  //         textAlign: TextAlign.center,
                  //       ),
                  //       verticalSpaceRegular,
                  //       model.gotRating
                  //           ? Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Icon(
                  //                   Icons.star,
                  //                   color: model.rating >= 1
                  //                       ? colors.primary
                  //                       : colors.kcCaptionGreyColor,
                  //                   size: 55.0,
                  //                 ),
                  //                 Icon(
                  //                   Icons.star,
                  //                   color: model.rating >= 2
                  //                       ? colors.primary
                  //                       : colors.kcCaptionGreyColor,
                  //                   size: 55.0,
                  //                 ),
                  //                 Icon(
                  //                   Icons.star,
                  //                   color: model.rating >= 3
                  //                       ? colors.primary
                  //                       : colors.kcCaptionGreyColor,
                  //                   size: 55.0,
                  //                 ),
                  //                 Icon(
                  //                   Icons.star,
                  //                   color: model.rating >= 4
                  //                       ? colors.primary
                  //                       : colors.kcCaptionGreyColor,
                  //                   size: 55.0,
                  //                 ),
                  //                 Icon(
                  //                   Icons.star,
                  //                   color: model.rating >= 5
                  //                       ? colors.primary
                  //                       : colors.kcCaptionGreyColor,
                  //                   size: 55.0,
                  //                 ),
                  //               ],
                  //             )
                  //           : Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 GestureDetector(
                  //                   onTap: () =>
                  //                       model.starOnTaped(SelectedStar.One),
                  //                   child: Icon(
                  //                     Icons.star,
                  //                     color: model.rating >= 1
                  //                         ? colors.primary
                  //                         : colors.kcCaptionGreyColor,
                  //                     size: 55.0,
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                   onTap: () =>
                  //                       model.starOnTaped(SelectedStar.Two),
                  //                   child: Icon(
                  //                     Icons.star,
                  //                     color: model.rating >= 2
                  //                         ? colors.primary
                  //                         : colors.kcCaptionGreyColor,
                  //                     size: 55.0,
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                   onTap: () =>
                  //                       model.starOnTaped(SelectedStar.Three),
                  //                   child: Icon(
                  //                     Icons.star,
                  //                     color: model.rating >= 3
                  //                         ? colors.primary
                  //                         : colors.kcCaptionGreyColor,
                  //                     size: 55.0,
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                   onTap: () =>
                  //                       model.starOnTaped(SelectedStar.Four),
                  //                   child: Icon(
                  //                     Icons.star,
                  //                     color: model.rating >= 4
                  //                         ? colors.primary
                  //                         : colors.kcCaptionGreyColor,
                  //                     size: 55.0,
                  //                   ),
                  //                 ),
                  //                 GestureDetector(
                  //                   onTap: () =>
                  //                       model.starOnTaped(SelectedStar.Five),
                  //                   child: Icon(
                  //                     Icons.star,
                  //                     color: model.rating >= 5
                  //                         ? colors.primary
                  //                         : colors.kcCaptionGreyColor,
                  //                     size: 55.0,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //     ],
                  //   ),
                  // ),
                  verticalSpaceRegular,
                  verticalSpaceRegular,
                  verticalSpaceRegular,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BookingItem extends StatelessWidget {
  const BookingItem({
    Key? key,
    this.detailName,
    this.detailValue,
  }) : super(key: key);
  final String? detailName;
  final String? detailValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: AppText.body1(detailName!)),
        horizontalSpaceMedium,
        Expanded(
          child: AppText.body1(
            detailValue!,
            color: colors.kcCaptionGreyColor,
            textAlign: TextAlign.right,
          ),
        ),
      ],
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
                    trainingRatingTitle,
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
