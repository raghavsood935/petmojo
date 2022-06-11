import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/enum/activeAppointmentStatus.dart';
import 'package:tamely/enum/service_type.dart';
import 'package:tamely/gen_assets/assets.gen.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'activeappointments_viewmodel.dart';

class ActiveAppointmentsView extends StatelessWidget {
  const ActiveAppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActiveAppointmentsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceMedium,
              //body
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: model.activeAppointments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ActiveAppointmentItem(
                      userName: model.activeAppointments[index].userName,
                      userPicture: model.activeAppointments[index].userPicture,
                      serviceName: model.activeAppointments[index].serviceName,
                      dogs: model.activeAppointments[index].dogs,
                      lastDate:model.activeAppointments[index].lastDate,
                      subscriptionType:
                          model.activeAppointments[index].subscriptionType,
                      packageSubscriptionType:model.activeAppointments[index].packageSubscriptionType,
                      dateAndTime: model.activeAppointments[index].dateAndTime,
                      bookedDate:model.activeAppointments[index].bookedDate,
                      bookedTime:model.activeAppointments[index].bookedTime,
                      status: model.activeAppointments[index].status,
                      onTapped: () => model.toAppointmentDetails(index),
                      showReorder: model.activeAppointments[index].showReorder,
                      onReorderTapped: () => model.reorderARun(index),
                      showBooking: model.activeAppointments[index].showBooking,
                      onBookingTapped: () => model.toBooking(index),
                      serviceType:
                          model.activeAppointments[index].serviceType ??
                              ServiceType.DogRunning,
                      upcomingOrOngoing:
                          model.activeAppointments[index].upcomingOrOngoing,
                      run1Time:model.activeAppointments[index].run1Time,
                      run2Time:model.activeAppointments[index].run2Time,
                      sessionTime:model.activeAppointments[index].sessionTime,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      verticalSpaceMedium,
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ActiveAppointmentsViewModel(),
    );
  }
}

class ActiveAppointmentItem extends StatelessWidget {
  ActiveAppointmentItem({
    Key? key,
    this.userPicture,
    this.serviceName,
    this.subscriptionType,
    this.dateAndTime,
    this.onTapped,
    this.dogs,
    this.status,
    this.userName,
    this.showReorder,
    this.onReorderTapped,
    this.run1Time,
    this.run2Time,
    this.showBooking,
    this.onBookingTapped,
    this.serviceType = ServiceType.DogRunning,
    this.upcomingOrOngoing, this.bookedDate,this.bookedTime, this.packageSubscriptionType, this.lastDate, this.sessionTime,
  }) : super(key: key);
  final String? userName;
  final String? userPicture;
  final String? serviceName;
  final String? lastDate;
  final String? sessionTime;
  final List<String>? dogs;
  final String? subscriptionType;
  final String? packageSubscriptionType;
  final String? dateAndTime;
  final String? bookedDate;
  final String? bookedTime;
  final ActiveAppointmentStatus? status;
  final void Function()? onTapped;
  final bool? showReorder;
  final bool? showBooking;
  final void Function()? onReorderTapped;
  final void Function()? onBookingTapped;
  final ServiceType serviceType;
  final String? upcomingOrOngoing;
  final String? run1Time;
  final String? run2Time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTapped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 53.0 / 2,
                    backgroundColor: colors.primaryLight,
                    child: Image.asset(
                        (status==ActiveAppointmentStatus.Pending)
                            ? "assets/images/delay.png"
                            : (serviceType==ServiceType.DogGrooming)
                            ? "assets/images/dog_grooming_circle.png"
                            :(serviceType==ServiceType.DogRunning)
                            ? "assets/images/dog_running.png"
                            : "assets/images/dog_training.png"
                    ),
                  ),
                  horizontalSpaceRegular,
                  Flexible(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText.body1(
                              serviceName!,
                            ),
                            horizontalSpaceMedium,
                            Visibility(
                              visible: status == ActiveAppointmentStatus.Accepted,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 8),
                                decoration: BoxDecoration(
                                  color: colors.green10,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: AppText.overline(
                                  confirmedLabel,
                                  color: colors.green70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        verticalSpaceTiny,
                        Container(
                          width: MediaQuery.of(context).size.width*0.579,
                          child:Row(
                            children: [
                              Flexible(
                                child: AppText.body1(
                                  (packageSubscriptionType!="Free")?subscriptionType!:"FREE Demo Session",
                                  color: colors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        verticalSpaceTiny,
                        Row(
                          children: [
                            AppText.body1(
                              "for ",
                              color: colors.kcCaptionGreyColor,
                            ),
                            dogs!.length == 1
                                ? AppText.body1(
                              "${dogs![0]}",
                            )
                                : Row(
                              children: [
                                AppText.body1(
                                  "${dogs![0]}",
                                ),
                                AppText.body1(
                                  "  &  ",
                                  color: colors.kcCaptionGreyColor,
                                ),
                                AppText.body1(
                                  "${dogs![1]}",
                                ),
                              ],
                            ),
                            status == ActiveAppointmentStatus.Accepted
                                ? Row(
                              children: [
                                AppText.body1(
                                  " with ",
                                  color: colors.kcCaptionGreyColor,
                                ),
                                AppText.body1(
                                  userName!,
                                )
                              ],
                            )
                                : Container(),
                          ],
                        ),
                        status == ActiveAppointmentStatus.Pending
                            ? Container(
                          width: MediaQuery.of(context).size.width*0.579,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: AppText.body1(
                                      serviceType == ServiceType.DogGrooming
                                          ? groomingPendingLabel
                                          : ( serviceType == ServiceType.DogRunning)?pendingLabel:trainerPendingLabel,
                                      color: colors.pink,
                                    ),
                                  ),
                                ],
                              )
                            )
                            :Container(),
                        verticalSpaceTiny,
                        // AppText.body1(
                        //   // DateTime.parse(dateAndTime!).isAfter(DateTime.now())
                        //   //     ? "Booking date: $dateAndTime"
                        //       "Booking Date: $bookedDate",
                        // ),
                        // verticalSpaceTiny,
                        // AppText.body1(
                        //   // DateTime.parse(dateAndTime!).isAfter(DateTime.now())
                        //   //     ? "Booking date: $dateAndTime"
                        //   "Booking Time: $bookedTime",
                        // ),
                        verticalSpaceTiny,
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: colors.primary,
                              size: 20,
                            ),
                            horizontalSpaceTiny,
                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: status == ActiveAppointmentStatus.Accepted
                                        ? upcomingOrOngoing == "Upcoming"
                                        ? (serviceType==ServiceType.DogRunning)?AppText.body1(
                                      "Upcoming : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}\n${run2Time==""?run1Time:"$run1Time & $run2Time"}",
                                    ):(serviceType==ServiceType.DogGrooming)?AppText.body1(
                                      "Upcoming : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}\n$sessionTime",
                                    ):AppText.body1(
                                      "Upcoming : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}",
                                    )
                                        : (serviceType==ServiceType.DogRunning)?AppText.body1(
                                      "Ongoing : Last-${DateFormat.yMMMEd().format(DateTime.parse(lastDate!))}\n${run2Time==""?run1Time:"$run1Time & $run2Time"}",
                                    ):(serviceType==ServiceType.DogGrooming)?AppText.body1(
                                      "Ongoing : $sessionTime",
                                    ):AppText.body1(
                                      "Ongoing",
                                    )
                                        :(serviceType==ServiceType.DogRunning)?AppText.body1(
                                      "Waiting : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}\n${run2Time==""?run1Time:"$run1Time & $run2Time"}",
                                    ):(serviceType==ServiceType.DogGrooming)?AppText.body1(
                                      "Waiting : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}\n$sessionTime",
                                    ):AppText.body1(
                                      "Waiting : ${DateFormat.yMMMEd().format(DateTime.parse(dateAndTime!))}",
                                    ),
                                  ),
                                ],
                              )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: showReorder! || showBooking!,
          child: verticalSpaceRegular,
        ),
        Visibility(
          visible: showReorder! && status == ActiveAppointmentStatus.Accepted,
          child: GestureDetector(
            onTap: onReorderTapped,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colors.green10,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
    (serviceType == ServiceType.DogRunning)?reorderLabel:"Upgrade",
                style: TextStyle(
                  color: colors.green70,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: showBooking!,
          child: GestureDetector(
            onTap: onBookingTapped,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                serviceType == ServiceType.DogGrooming ? "Pay Now" : bookLabel,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: showBooking! && serviceType != ServiceType.DogGrooming,
          child: verticalSpaceSmall,
        ),
        Visibility(
          visible: showBooking! && serviceType != ServiceType.DogGrooming,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: AppText.caption(
              bookTextLabel,
              color: colors.primary,
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
