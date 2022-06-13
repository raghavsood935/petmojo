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
import 'dr_appointmentdetails_viewmodel.dart';
import 'package:tamely/widgets/custom_date_picker.dart';

class DRAppointmentDetailsView extends StatelessWidget {
  const DRAppointmentDetailsView({Key? key, required this.appointmentId})
      : super(key: key);
  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DRAppointmentDetailsViewModel>.reactive(
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
                spacedDividerSmall,
                verticalSpaceSmall,

                //Division 1 - service, pets name, amount
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText.body2(
                            dogWalkingTitle,
                          ),
                          verticalSpaceSmall,
                          Row(
                            children: [
                              AppText.body1(
                                "for ",
                                color: colors.kcCaptionGreyColor,
                              ),
                              model.dogs.length == 1
                                  ? GestureDetector(
                                      onTap: model.toDogProfileOne,
                                      child: AppText.body1(
                                        "${model.dogs[0]}",
                                        color: colors.primary,
                                      ),
                                    )
                                  : Row(
                                      children: [
                                        GestureDetector(
                                          onTap: model.toDogProfileOne,
                                          child: AppText.body1(
                                            "${model.dogs[0]}",
                                            color: colors.primary,
                                          ),
                                        ),
                                        AppText.body1(
                                          "  &  ",
                                        ),
                                        GestureDetector(
                                          onTap: model.toDogProfileTwo,
                                          child: AppText.body1(
                                            "${model.dogs[1]}",
                                            color: colors.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                        ],
                      ),
                      AppText.body2(
                        "Rs ${model.amount}",
                        color: colors.kcCaptionGreyColor,
                      ),
                    ],
                  ),
                ),
                verticalSpaceSmall,
                spacedDividerSmall,

                //Division 2 - user name, chat
                Visibility(
                  visible: model.showDogRunner,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomCircularAvatar(
                              radius: 37.0 / 2,
                              imgPath: model.userPicture,
                              isHuman: true,
                            ),
                            horizontalSpaceSmall,
                            GestureDetector(
                              onTap: model.toUserProfile,
                              child: AppText.body1(
                                model.userName,
                                color: colors.primary,
                              ),
                            ),
                            horizontalSpaceRegular,
                            CircleAvatar(
                              backgroundColor: colors.primaryLight,
                              radius: 30 / 2,
                              child: SvgPicture.asset(
                                "assets/images/chat.svg",
                                color: colors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                      const Divider(color: Colors.blueGrey, height: 5.0),
                    ],
                  ),
                ),

                Visibility(
                  visible: model.showNoDogRunner,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        color: colors.kcLightGreyColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: colors.white,
                              ),
                              horizontalSpaceSmall,
                              AppText.body1(
                                noDogRunnerAcceptedLabel,
                                color: colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      verticalSpaceSmall,
                      const Divider(color: Colors.blueGrey, height: 5.0),
                    ],
                  ),
                ),

                // Testimony
                Visibility(
                  visible: model.showGetTestimony,
                  child: Container(
                    width: screenWidth(context),
                    color: colors.primaryLight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          verticalSpaceRegular,
                          AppText.body2(
                            testimonyTitle,
                          ),
                          verticalSpaceSmall,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    model.starOnTaped(SelectedStar.One),
                                child: Icon(
                                  Icons.star,
                                  color: model.rating >= 1
                                      ? colors.primary
                                      : colors.white,
                                  size: 55.0,
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    model.starOnTaped(SelectedStar.Two),
                                child: Icon(
                                  Icons.star,
                                  color: model.rating >= 2
                                      ? colors.primary
                                      : colors.white,
                                  size: 55.0,
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    model.starOnTaped(SelectedStar.Three),
                                child: Icon(
                                  Icons.star,
                                  color: model.rating >= 3
                                      ? colors.primary
                                      : colors.white,
                                  size: 55.0,
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    model.starOnTaped(SelectedStar.Four),
                                child: Icon(
                                  Icons.star,
                                  color: model.rating >= 4
                                      ? colors.primary
                                      : colors.white,
                                  size: 55.0,
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    model.starOnTaped(SelectedStar.Five),
                                child: Icon(
                                  Icons.star,
                                  color: model.rating >= 5
                                      ? colors.primary
                                      : colors.white,
                                  size: 55.0,
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceRegular,
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: AppText.body1(
                                testimonyLabel,
                                textAlign: TextAlign.start,
                                color: colors.black,
                              ),
                            ),
                          ),
                          AppInputField(
                            hint: testimonyHint,
                            controller: model.testimony,
                            textInputType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                          verticalSpaceTiny,
                          GestureDetector(
                            onTap: model.setTestimony,
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: model.loadingTestimony
                                  ? CircularProgressIndicator(
                                      valueColor:
                                          AlwaysStoppedAnimation(Colors.white),
                                    )
                                  : Text(
                                      submitButton,
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
                ),
                model.showGetTestimony
                    ? const Divider(color: Colors.blueGrey, height: 5.0)
                    : Container(),

                //Division 3 - service completed, service rejected
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
                      const Divider(color: Colors.blueGrey, height: 5.0),
                    ],
                  ),
                ),

                // get review if

                //Division 4 - Dates
                Column(
                  children: [
                    Container(
                      color: colors.primaryLight,
                      child: CustomDatePicker(
                        model.startDate,
                        initialSelectedDate: model.initialDate,
                        daysCount: model.numberOfDays,
                        customscrollcontroller: model.scrollController,
                        inactiveDates: model.daysOff,
                        selectionColor: colors.primary,
                        selectedTextColor: Colors.white,
                        deactivatedColor: colors.kcLightGreyColor,
                        onDateChange: model.dateSelected,
                        noTickDates: model.noTickDates,
                        attentionIcons: model.attentionIcons,
                      ),
                    ),
                    const Divider(color: Colors.blueGrey, height: 5.0),
                  ],
                ),

                //Division 5 - Walks
                verticalSpaceMedium,
                model.numberOfWalk == 1
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: WalkItem(
                          walkName: walkSingleLabel,
                          walkTime: model.walkOneTime,
                          showLive: model.showLiveOne,
                          showUpcoming: model.showUpcomingOne,
                          showNa: model.showNaOne,
                          showReport: model.showReportOne,
                          onTapped: model.showLiveOne
                              ? model.toLiveMapOne
                              : model.toReportCardOne,
                        ),
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: WalkItem(
                              walkName: walkOneLabel,
                              walkTime: model.walkOneTime,
                              showLive: model.showLiveOne,
                              showUpcoming: model.showUpcomingOne,
                              showNa: model.showNaOne,
                              showReport: model.showReportOne,
                              onTapped: model.showLiveOne
                                  ? model.toLiveMapOne
                                  : model.toReportCardOne,
                            ),
                          ),
                          spacedDivider,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: WalkItem(
                              walkName: walkTwoLabel,
                              walkTime: model.walkTwoTime,
                              showLive: model.showLiveTwo,
                              showUpcoming: model.showUpcomingTwo,
                              showNa: model.showNaTwo,
                              showReport: model.showReportTwo,
                              onTapped: model.showLiveTwo
                                  ? model.toLiveMapTwo
                                  : model.toReportCardTwo,
                            ),
                          ),
                        ],
                      ),
                verticalSpaceMedium,
                const Divider(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  thickness: 5.0,
                ),

                //Division 6 - Booking details
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ExpansionTile(
                    iconColor: colors.black,
                    collapsedIconColor: colors.black,
                    title: AppText.body2(
                      bookingDetailsTitle,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            model.numberOfPets == 1
                                ? Column(
                                    children: [
                                      BookingItem(
                                        detailName: petOneNameLabel,
                                        detailValue: "${model.dogs[0]}",
                                        clickable: true,
                                        onTapped: model.toDogProfileOne,
                                      ),
                                      verticalSpaceRegular,
                                      BookingItem(
                                        detailName: petOneSizeLabel,
                                        detailValue: "${model.dogsSize[0]}",
                                        clickable: false,
                                      ),
                                      verticalSpaceRegular,
                                    ],
                                  )
                                : Column(
                                    children: [
                                      BookingItem(
                                        detailName: petOneNameLabel,
                                        detailValue: "${model.dogs[0]}",
                                        clickable: true,
                                        onTapped: model.toDogProfileOne,
                                      ),
                                      verticalSpaceRegular,
                                      BookingItem(
                                        detailName: petOneSizeLabel,
                                        detailValue: "${model.dogsSize[0]}",
                                        clickable: false,
                                      ),
                                      verticalSpaceRegular,
                                      BookingItem(
                                        detailName: petTwoNameLabel,
                                        detailValue: "${model.dogs[1]}",
                                        clickable: true,
                                        onTapped: model.toDogProfileOne,
                                      ),
                                      verticalSpaceRegular,
                                      BookingItem(
                                        detailName: petTwoSizeLabel,
                                        detailValue: "${model.dogsSize[1]}",
                                        clickable: false,
                                      ),
                                      verticalSpaceRegular,
                                    ],
                                  ),
                            BookingItem(
                              detailName: frequencyLabel,
                              detailValue: model.numberOfWalk == 1
                                  ? "Once a day"
                                  : "Twice a day",
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: subscriptionLabel,
                              detailValue: model.subscriptionType,
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: noOfPetsLabel,
                              detailValue: "${model.dogs.length}",
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: startDateLabel,
                              detailValue: model.startDateString,
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            BookingItem(
                              detailName: endDateLabel,
                              detailValue: model.endDateString,
                              clickable: false,
                            ),
                            verticalSpaceRegular,
                            model.numberOfWalk == 1
                                ? BookingItem(
                                    detailName: walkOneTimeLabel,
                                    detailValue: model.walkOneTime,
                                    clickable: false,
                                  )
                                : Column(
                                    children: [
                                      BookingItem(
                                        detailName: walkOneTimeLabel,
                                        detailValue: model.walkOneTime,
                                        clickable: false,
                                      ),
                                      verticalSpaceRegular,
                                      BookingItem(
                                        detailName: walkTwoTimeLabel,
                                        detailValue: model.walkTwoTime,
                                        clickable: false,
                                      ),
                                    ],
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

                //Division 7 - Pet Details
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: ExpansionTile(
                //     iconColor: colors.black,
                //     collapsedIconColor: colors.black,
                //     title: AppText.body2(
                //       petDetailsTitle,
                //     ),
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 15),
                //             child: Column(
                //               children: [
                //                 BookingItem(
                //                   detailName: detailOne,
                //                   detailValue: "${model.detailsReplies[0]}",
                //                   clickable: false,
                //                 ),
                //                 verticalSpaceRegular,
                //                 BookingItem(
                //                   detailName: detailTwo,
                //                   detailValue: "${model.detailsReplies[1]}",
                //                   clickable: false,
                //                 ),
                //                 verticalSpaceRegular,
                //                 BookingItem(
                //                   detailName: detailThree,
                //                   detailValue: "${model.detailsReplies[2]}",
                //                   clickable: false,
                //                 ),
                //                 verticalSpaceRegular,
                //                 BookingItem(
                //                   detailName: detailFour,
                //                   detailValue: "${model.detailsReplies[3]}",
                //                   clickable: false,
                //                 ),
                //                 verticalSpaceRegular,
                //                 BookingItem(
                //                   detailName: detailFive,
                //                   detailValue: "${model.detailsReplies[4]}",
                //                   clickable: false,
                //                 ),
                //               ],
                //             ),
                //           ),
                //           spacedDivider,
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 15),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 AppText.caption(
                //                   specialInstructions,
                //                 ),
                //                 verticalSpaceRegular,
                //                 AppText.caption(
                //                   model.instructions,
                //                   color: colors.kcCaptionGreyColor,
                //                 ),
                //                 verticalSpaceRegular,
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                // const Divider(
                //   color: colors.kcLightGreyBackground,
                //   height: 5.0,
                //   thickness: 5.0,
                // ),

                //Division 8 - Address
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceRegular,
                      AppText.body2(
                        addressTitle,
                      ),
                      verticalSpaceSmall,
                      AppText.body1(
                        model.address,
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

                // -- Cancel
                Visibility(
                  visible: model.showCancelSubscription,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: GestureDetector(
                          onTap: model.cancelSubscriptionButton,
                          child: AppText.body1(
                            cancelSubscriptionLabel,
                            color: colors.primary,
                          ),
                        ),
                      ),
                      spacedDivider,
                    ],
                  ),
                ),

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
                              borderRadius: BorderRadius.circular(50),
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
      viewModelBuilder: () => DRAppointmentDetailsViewModel(appointmentId),
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
      this.showNa,
      this.showReport,
      this.onTapped})
      : super(key: key);
  final String? walkName;
  final String? walkTime;
  final bool? showLive;
  final bool? showUpcoming;
  final bool? showNa;
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
        showNa!
            ? AppText.body1(
                naWalkLabel,
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
