import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../../enum/dog_training_journey.dart';
import 'dt_appointmentdetails_viewmodel.dart';

class DTAppointmentDetailsView extends StatelessWidget {
  const DTAppointmentDetailsView({Key? key, required this.appointmentId})
      : super(key: key);
  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DTAppointmentDetailsViewModel>.reactive(
      onModelReady: (model) async {
        model.getAppointments();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        appointmentTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                verticalSpaceRegular,

                // Division 1 - Package Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.body2(
                      model.subscriptionType,
                    ),
                    horizontalSpaceTiny,
                    AppText.caption(
                      "(${model.numberOfSessions} sessions)",
                      color: colors.kcCaptionGreyColor,
                    ),
                  ],
                ),
                verticalSpaceRegular,

                //Division 2 - service completed, service rejected
                Visibility(
                  visible: model.serviceCompleted || model.serviceRejected,
                  child: Column(
                    children: [
                      Container(
                        height: 32,
                        color: model.serviceCompleted
                            ? colors.green10
                            : colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            model.serviceCompleted
                                ? Icon(
                                    Icons.check_circle,
                                    color: colors.green30,
                                  )
                                : Icon(
                                    Icons.error,
                                    color: colors.white,
                                  ),
                            horizontalSpaceSmall,
                            AppText.caption(
                              model.serviceCompleted
                                  ? serviceCompletedLabel
                                  : serviceCancelledLabel,
                              color: model.serviceCompleted
                                  ? colors.black
                                  : colors.white,
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                    ],
                  ),
                ),

                // Division 3 - Session Number
                Container(
                  height: 30,
                  width: screenWidth(context),
                  color: colors.white,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 25.0,
                    right: 25.0,
                  ),
                  child: AppText.body2(
                    "Session Number",
                    color: colors.black,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 90,
                  color: colors.white,
                  padding: EdgeInsets.only(
                    top: 9.0,
                    bottom: 10.0,
                    left: 25.0,
                    right: 25.0,
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: model.numberOfSessions,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => model.onSessionNumberTapped(index + 1),
                        child: Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (model.indexToStart > index + 1)
                                  verticalSpaceMedium,
                                AppText.body2(
                                  "${index + 1}",
                                  color: model.currentSession == index + 1
                                      ? colors.white
                                      : colors.black,
                                ),
                                if (index + 1 < model.indexToStart)
                                  ((isInTicks(model.Ticks, index + 1))
                                      ? Text("✅")
                                      : (isInWarning(model.warning, index + 1))
                                          ? Text("⚠")
                                          : Text("")),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: model.currentSession == index + 1
                                ? colors.primary
                                : ((index + 1 < model.indexToStart) &&
                                        (isInTicks(model.Ticks, index + 1) ||
                                            isInWarning(
                                                model.warning, index + 1)))
                                    ? Color(0xFFFACAD7)
                                    : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        spacedDividerSmall,
                  ),
                ),
                verticalSpaceSmall,

                //Division 4 - Booking details
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
                              detailValue: model.showDogRunner
                                  ? model.userName
                                  : "Yet to assign",
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: "Date",
                              detailValue: model.startDateString,
                              clickable: false,
                            ),
                            // verticalSpaceRegular,
                            // BookingItem(
                            //   detailName: "Timings",
                            //   detailValue: model.walkOneTime,
                            //   clickable: false,
                            // ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: "Session Report",
                              detailValue: model.showReportOne
                                  ? "See my report"
                                  : (model.showUpcomingOne)
                                      ? "Upcoming"
                                      : (model.showNa)
                                          ? "Na"
                                          : "Ongoing",
                              clickable: model.showReportOne ? true : false,
                              onTapped: model.toReport,
                            ),
                            verticalSpaceRegular,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  thickness: 5.0,
                ),

                //Division 8 - Address
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceRegular,
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: colors.primary,
                            size: 40.0,
                          ),
                          horizontalSpaceSmall,
                          AppText.body1(
                            model.address,
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                    ],
                  ),
                ),
                const Divider(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  thickness: 5.0,
                ),
                verticalSpaceMedium,

                // Learning Journey
                Container(
                  height: 100,
                  width: screenWidth(context),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: colors.lightBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: AppText.headingOne(
                      "Learning Journey",
                      color: colors.primary,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 1250,
                  decoration: BoxDecoration(
                    color: colors.lightBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // layer One
                      // -- Lines
                      Positioned(
                        right: 95,
                        top: 50,
                        child: Image.asset(
                            "assets/images/dog_journey/dotted_lines/line_one.png"),
                      ),
                      Positioned(
                        left: 101,
                        top: 248,
                        child: Image.asset(
                            "assets/images/dog_journey/dotted_lines/line_two.png"),
                      ),
                      Positioned(
                        right: 95,
                        top: 450,
                        child: Image.asset(
                            "assets/images/dog_journey/dotted_lines/line_one.png"),
                      ),
                      Positioned(
                        left: 101,
                        top: 648,
                        child: Image.asset(
                            "assets/images/dog_journey/dotted_lines/line_two.png"),
                      ),
                      Positioned(
                        right: 0,
                        top: 850,
                        child: Image.asset(
                            "assets/images/dog_journey/dotted_lines/line_five.png"),
                      ),
                      Positioned(
                        right: 105,
                        top: 1100,
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                              "assets/images/dog_journey/training_certificate.png"),
                        ),
                      ),

                      // -- Session No.
                      // -- -- Pac - 1
                      SessionNo(
                        right: 105,
                        top: 50,
                        sessionNo: 1,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 134,
                        top: 42,
                        sessionNo: 2,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 151,
                        top: 58,
                        sessionNo: 3,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 153,
                        top: 80,
                        sessionNo: 4,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 151,
                        top: 101,
                        sessionNo: 5,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 148,
                        top: 121,
                        sessionNo: 6,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 143,
                        top: 140,
                        sessionNo: 7,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 140,
                        top: 160,
                        sessionNo: 8,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 140,
                        top: 180,
                        sessionNo: 9,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 141,
                        top: 200,
                        sessionNo: 10,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 148,
                        top: 220,
                        sessionNo: 11,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 170,
                        top: 230,
                        sessionNo: 12,
                        sessionJourney: model.sessionJourney,
                      ),

                      // -- -- Pac - 3
                      SessionNo(
                        right: 105,
                        top: 450,
                        sessionNo: 25,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 134,
                        top: 400 + 42,
                        sessionNo: 26,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 151,
                        top: 400 + 58,
                        sessionNo: 27,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 153,
                        top: 400 + 80,
                        sessionNo: 28,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 151,
                        top: 400 + 101,
                        sessionNo: 29,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 148,
                        top: 400 + 121,
                        sessionNo: 30,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 143,
                        top: 400 + 140,
                        sessionNo: 31,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 140,
                        top: 400 + 160,
                        sessionNo: 32,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 140,
                        top: 400 + 180,
                        sessionNo: 33,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 141,
                        top: 400 + 200,
                        sessionNo: 34,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 148,
                        top: 400 + 220,
                        sessionNo: 35,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 170,
                        top: 400 + 230,
                        sessionNo: 36,
                        sessionJourney: model.sessionJourney,
                      ),

                      // -- -- Pac - 2
                      SessionNo(
                        left: 105,
                        top: 250,
                        sessionNo: 13,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 134,
                        top: 200 + 42,
                        sessionNo: 14,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 150,
                        top: 200 + 58,
                        sessionNo: 15,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 148,
                        top: 200 + 80,
                        sessionNo: 16,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 148,
                        top: 200 + 101,
                        sessionNo: 17,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 145,
                        top: 200 + 121,
                        sessionNo: 18,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 141,
                        top: 200 + 140,
                        sessionNo: 19,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 138,
                        top: 200 + 160,
                        sessionNo: 20,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 138,
                        top: 200 + 180,
                        sessionNo: 21,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 142,
                        top: 200 + 200,
                        sessionNo: 22,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 156,
                        top: 200 + 215,
                        sessionNo: 23,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 175,
                        top: 200 + 223,
                        sessionNo: 24,
                        sessionJourney: model.sessionJourney,
                      ),

                      // -- -- Pac - 4
                      SessionNo(
                        left: 105,
                        top: 650,
                        sessionNo: 37,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 134,
                        top: 600 + 42,
                        sessionNo: 38,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 150,
                        top: 600 + 58,
                        sessionNo: 39,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 148,
                        top: 600 + 80,
                        sessionNo: 40,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 148,
                        top: 600 + 101,
                        sessionNo: 41,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 145,
                        top: 600 + 121,
                        sessionNo: 42,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 141,
                        top: 600 + 140,
                        sessionNo: 43,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 138,
                        top: 600 + 160,
                        sessionNo: 44,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 138,
                        top: 600 + 180,
                        sessionNo: 45,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 142,
                        top: 600 + 200,
                        sessionNo: 46,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 156,
                        top: 600 + 215,
                        sessionNo: 47,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        left: 175,
                        top: 600 + 223,
                        sessionNo: 48,
                        sessionJourney: model.sessionJourney,
                      ),

                      // -- -- Pac - 5 - 1
                      SessionNo(
                        right: 120,
                        top: 850,
                        sessionNo: 49,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 140,
                        top: 857,
                        sessionNo: 50,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 159,
                        top: 867,
                        sessionNo: 51,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 183,
                        top: 879,
                        sessionNo: 52,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 208,
                        top: 895,
                        sessionNo: 53,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 226,
                        top: 907,
                        sessionNo: 54,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 250,
                        top: 923,
                        sessionNo: 55,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 269,
                        top: 943,
                        sessionNo: 56,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 250,
                        top: 963,
                        sessionNo: 57,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 223,
                        top: 969,
                        sessionNo: 58,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 200,
                        top: 972,
                        sessionNo: 59,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 180,
                        top: 973,
                        sessionNo: 60,
                        sessionJourney: model.sessionJourney,
                      ),
                      // -- -- Pac - 5 - 2
                      SessionNo(
                        right: 159,
                        top: 973,
                        sessionNo: 61,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 133,
                        top: 973,
                        sessionNo: 62,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 103,
                        top: 974,
                        sessionNo: 63,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 80,
                        top: 975,
                        sessionNo: 64,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 60,
                        top: 976,
                        sessionNo: 65,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 40,
                        top: 978,
                        sessionNo: 66,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 15,
                        top: 985,
                        sessionNo: 67,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 0,
                        top: 1008,
                        sessionNo: 68,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 05,
                        top: 1033,
                        sessionNo: 69,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 25,
                        top: 1055,
                        sessionNo: 70,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 48,
                        top: 1071,
                        sessionNo: 71,
                        sessionJourney: model.sessionJourney,
                      ),
                      SessionNo(
                        right: 73,
                        top: 1091,
                        sessionNo: 72,
                        sessionJourney: model.sessionJourney,
                      ),

                      // Layer Two
                      Column(
                        //mainAxisSize: MainAxisSize.min,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // One
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 140,
                                width: 130,
                                child: model.sessionJourney >= 1
                                    ? Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_one_un.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_one_un.png"),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: model.sessionJourney >= 1 &&
                                        model.sessionJourney <= 12
                                    ? Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_one_state_two.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_one_state_three.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          // Two
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: model.sessionJourney <= 11
                                    ? Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_two_state_one.png")
                                    : model.sessionJourney >= 13 &&
                                            model.sessionJourney <= 24
                                        ? Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_two_state_two.png")
                                        : Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_two_state_three.png"),
                              ),
                              Container(
                                height: 140,
                                width: 130,
                                child: model.sessionJourney >= 13
                                    ? Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_two_un.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_two_loc.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          // Three
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 140,
                                width: 130,
                                child: model.sessionJourney >= 25
                                    ? Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_three_un.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_three_loc.png"),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: model.sessionJourney <= 23
                                    ? Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_three_state_one.png")
                                    : model.sessionJourney >= 25 &&
                                            model.sessionJourney <= 25
                                        ? Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_three_state_two.png")
                                        : Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_three_state_three.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          // Four
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: model.sessionJourney <= 35
                                    ? Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_four_state_one.png")
                                    : model.sessionJourney >= 37 &&
                                            model.sessionJourney <= 48
                                        ? Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_four_state_two.png")
                                        : Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_four_state_three.png"),
                              ),
                              Container(
                                height: 140,
                                width: 130,
                                child: model.sessionJourney >= 37
                                    ? Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_four_un.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_four_loc.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          // Five
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 140,
                                width: 130,
                                child: model.sessionJourney >= 49
                                    ? Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_two_un.png")
                                    : Image.asset(
                                        "assets/images/dog_journey/representation/training_rep_two_loc.png"),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: model.sessionJourney <= 47
                                    ? Image.asset(
                                        "assets/images/dog_journey/packages/training_pac_five_state_one.png")
                                    : model.sessionJourney >= 49 &&
                                            model.sessionJourney <= 72
                                        ? Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_five_state_two.png")
                                        : Image.asset(
                                            "assets/images/dog_journey/packages/training_pac_five_state_three.png"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 250,
                          ),
                          // Six
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpaceRegular,

                // buttons

                // -- Chat
                Visibility(
                  visible: model.enableChat,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: model.callCS,
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xffDBFFE5),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // phone icon
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.phone,
                                    color: Color(0xff168C22),
                                  ),
                                ),
                                Text(
                                  "Call Us Now",
                                  style: TextStyle(
                                      color: Color(0xff168C22),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                      ],
                    ),
                  ),
                ),

                // -- Book again
                Visibility(
                  visible: model.serviceCompleted || model.serviceRejected,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: model.toBookAgain,
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: colors.primary,
                                width: 1,
                              ),
                            ),
                            child: Text(
                              bookAgain,
                              style: TextStyle(
                                  color: colors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        verticalSpaceRegular,
                        verticalSpaceLarge,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DTAppointmentDetailsViewModel(appointmentId),
    );
  }

  isInTicks(List<int> ticks, int i) {
    for (var mySessionNumber in ticks) {
      if (i == mySessionNumber) return true;
    }
    return false;
  }

  isInWarning(List<int> ticks, int i) {
    for (var mySessionNumber in ticks) {
      if (i == mySessionNumber) return true;
    }
    return false;
  }
}

class SessionNo extends StatelessWidget {
  final double? right;
  final double? top;
  final double? left;
  final int? sessionJourney;
  final int? sessionNo;
  const SessionNo(
      {Key? key,
      this.right = null,
      required this.top,
      this.left = null,
      required this.sessionJourney,
      required this.sessionNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      left: left,
      child: sessionNo! < sessionJourney!
          ? Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: colors.green30,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.check_rounded,
                  color: colors.white,
                  size: 20,
                ),
              ),
            )
          : Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: colors.kcLightGreyColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "$sessionNo",
                  style: TextStyle(color: colors.white),
                ),
              ),
            ),
    );
  }
}

class MyDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var dash = Paint()
      ..color = colors.primary
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;
    canvas.drawLine(Offset(220, 50), Offset(200, 75), dash);
    final icon = Icons.check;
    TextPainter textPainter = TextPainter(textDirection: TextDirection.ltr);
    textPainter.text = TextSpan(
      text: String.fromCharCode(icon.codePoint),
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: icon.fontFamily,
        package:
            icon.fontPackage, // This line is mandatory for external icon packs
      ),
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(190, 75));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WalkItem extends StatelessWidget {
  const WalkItem(
      {Key? key,
      this.walkName,
      this.walkTime,
      this.showLive,
      this.showUpcoming,
      this.showReport,
      this.onTapped})
      : super(key: key);
  final String? walkName;
  final String? walkTime;
  final bool? showLive;
  final bool? showUpcoming;
  final bool? showReport;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.body1(
          walkName!,
        ),
        Spacer(),
        AppText.body1(
          walkTime!,
          color: colors.kcCaptionGreyColor,
        ),
        Spacer(),
        Visibility(
          visible: showLive!,
          child: GestureDetector(
            onTap: onTapped,
            child: AppText.body1(
              liveWalkLabel,
              color: colors.primary,
            ),
          ),
        ),
        showUpcoming!
            ? AppText.body1(
                upcomingWalkLabel,
                color: colors.kcCaptionGreyColor,
              )
            : Container(
                height: 0,
                width: 0,
              ),
        showReport!
            ? GestureDetector(
                onTap: onTapped,
                child: AppText.body1(
                  seeReportLabel,
                  color: colors.primary,
                ),
              )
            : Container(
                height: 0,
                width: 0,
              )
      ],
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
