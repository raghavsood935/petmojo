import 'package:flutter/material.dart';
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
                      subscriptionType:
                          model.activeAppointments[index].subscriptionType,
                      dateAndTime: model.activeAppointments[index].dateAndTime,
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
    this.showBooking,
    this.onBookingTapped,
    this.serviceType = ServiceType.DogRunning,
    this.upcomingOrOngoing,
  }) : super(key: key);
  final String? userName;
  final String? userPicture;
  final String? serviceName;
  final List<String>? dogs;
  final String? subscriptionType;
  final String? dateAndTime;
  final ActiveAppointmentStatus? status;
  final void Function()? onTapped;
  final bool? showReorder;
  final bool? showBooking;
  final void Function()? onReorderTapped;
  final void Function()? onBookingTapped;
  final ServiceType serviceType;
  final String? upcomingOrOngoing;
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
                      serviceType == ServiceType.DogGrooming
                          ? "assets/images/dog_grooming_circle.png"
                          : "assets/images/dog_running.png",
                    ),
                  ),
                  horizontalSpaceRegular,
                  Column(
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
                          ? AppText.body1(
                              serviceType == ServiceType.DogGrooming
                                  ? groomingPendingLabel
                                  : pendingLabel,
                              color: colors.pink,
                            )
                          : Container(),
                      verticalSpaceTiny,
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: colors.primary,
                            size: 20,
                          ),
                          horizontalSpaceTiny,
                          status == ActiveAppointmentStatus.Accepted
                              ? upcomingOrOngoing == "Upcoming"
                                  ? AppText.body1(
                                      "Upcoming : $dateAndTime",
                                    )
                                  : AppText.body1(
                                      "Ongoing",
                                    )
                              : AppText.body1(
                                  "Waiting",
                                ),
                        ],
                      ),
                    ],
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
          visible: showReorder!,
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
                reorderLabel,
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
