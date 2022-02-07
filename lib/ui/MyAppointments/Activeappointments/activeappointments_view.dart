import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/enum/activeAppointmentStatus.dart';
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
              verticalSpaceSmall,

              // DropDown
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: model.selectedServiceType,
                    hint: Text(dogWalkingTitle),
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 14,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 1,
                      color: colors.kcCaptionGreyColor,
                    ),
                    onChanged: model.selectAccountType,
                    items: <String>[
                      dogWalkingTitle,
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              spacedDividerSmall,
              verticalSpaceSmall,

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
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      spacedDividerSmall,
                ),
              ),
              spacedDividerSmall,
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ActiveAppointmentsViewModel(),
    );
  }
}

class ActiveAppointmentItem extends StatelessWidget {
  const ActiveAppointmentItem({
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 45.0 / 2,
                    backgroundColor: colors.primaryLight,
                    child: Image.asset("assets/images/dog_running.png"),
                  ),
                  horizontalSpaceRegular,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.body1(
                        serviceName!,
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
                              pendingLabel,
                              color: colors.pink,
                            )
                          : Container(),
                      verticalSpaceTiny,
                      AppText.body1(
                        subscriptionType!,
                      ),
                      verticalSpaceTiny,
                      AppText.body1(
                        "$upcomingLabel - $dateAndTime!",
                      ),
                      verticalSpaceSmall,
                      status == ActiveAppointmentStatus.Accepted &&
                              showReorder! == false &&
                              showBooking! == false
                          ? Container(
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
                            )
                          : Container(),
                      Visibility(
                        visible: showReorder!,
                        child: GestureDetector(
                          onTap: onReorderTapped,
                          child: Container(
                            height: 22.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: colors.primary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: AppText.caption(
                                reorderLabel,
                                color: colors.white,
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
                            height: 22.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: colors.primary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: AppText.caption(
                                bookLabel,
                                color: colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // showReorder!
                      //     ? GestureDetector(
                      //         onTap: onReorderTapped,
                      //         child: Container(
                      //           height: 22.0,
                      //           width: 70.0,
                      //           decoration: BoxDecoration(
                      //             color: colors.primary,
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: Center(
                      //             child: AppText.caption(
                      //               reorderLabel,
                      //               color: colors.white,
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     : Container(),
                      verticalSpaceSmall,
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: showReorder!,
              child: Container(
                height: 25,
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: colors.primary,
                ),
                child: Center(
                  child: AppText.caption(
                    reorderTextLabel,
                    color: colors.white,
                  ),
                ),
              ),
            ),
            // showReorder!
            //     ? Container(
            //         height: 25,
            //         width: screenWidth(context),
            //         decoration: BoxDecoration(
            //           color: colors.primary,
            //         ),
            //         child: Center(
            //           child: AppText.caption(
            //             reorderTextLabel,
            //             color: colors.white,
            //           ),
            //         ),
            //       )
            //     : Container(),
          ],
        ),
      ),
    );
  }
}
