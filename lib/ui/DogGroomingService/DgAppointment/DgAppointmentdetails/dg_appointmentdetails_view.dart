import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/enum/selectedStart.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'dg_appointmentdetails_viewmodel.dart';
import 'package:intl/intl.dart';

class DGAppointmentDetailsView extends StatelessWidget {
  const DGAppointmentDetailsView({Key? key, required this.appointmentId})
      : super(key: key);
  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DGAppointmentDetailsViewModel>.reactive(
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
                Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
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
                          child: Image.asset(
                              "assets/images/dog_grooming_icon.png"),
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
                            Row(
                              children: [
                                AppText.captionBold("Date: "),
                                AppText.caption(
                                  DateFormat("dd/MM/yyyy")
                                      .format(model.startDate),
                                ),
                                horizontalSpaceTiny,
                                AppText.captionBold("Time: "),
                                AppText.caption(model.weekDayTiming),
                              ],
                            ),
                            verticalSpaceSmall,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.captionBold("Address: "),
                                AppText.caption(
                                    model.addressLineOneController.text + ","),
                              ],
                            ),
                            AppText.caption(model.addressLineTwoController.text)
                          ],
                        )
                      ],
                    )),
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
                            model.dogs.length < 2 || model.dogs[1] == ""
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
                              detailName: "Invoice",
                              detailValue: model.showReportOne
                                  ? "See my invoice"
                                  : "Upcoming",
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DGAppointmentDetailsViewModel(appointmentId),
    );
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
