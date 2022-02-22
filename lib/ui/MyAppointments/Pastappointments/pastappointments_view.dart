import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/enum/pastAppointmentStatus.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

import 'pastappointments_viewmodel.dart';

class PastAppointmentsView extends StatelessWidget {
  const PastAppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PastAppointmentsViewModel>.reactive(
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
                  itemCount: model.pastAppointments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: PastAppointmentItem(
                        userName: model.pastAppointments[index].userName,
                        userPicture: model.pastAppointments[index].userPicture,
                        serviceName: model.pastAppointments[index].serviceName,
                        dogs: model.pastAppointments[index].dogs,
                        subscriptionType:
                            model.pastAppointments[index].subscriptionType,
                        dateAndTime: model.pastAppointments[index].dateAndTime,
                        status: model.pastAppointments[index].status,
                      ),
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
      viewModelBuilder: () => PastAppointmentsViewModel(),
    );
  }
}

class PastAppointmentItem extends StatelessWidget {
  const PastAppointmentItem({
    Key? key,
    this.userName,
    this.userPicture,
    this.serviceName,
    this.subscriptionType,
    this.dateAndTime,
    this.dogs,
    this.status,
  }) : super(key: key);
  final String? userName;
  final String? userPicture;
  final String? serviceName;
  final List<String>? dogs;
  final String? subscriptionType;
  final String? dateAndTime;
  final PastAppointmentStatus? status;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.body1(
                      serviceName!,
                    ),
                    horizontalSpaceMedium,
                    Visibility(
                      visible: status == PastAppointmentStatus.Canceled,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                          color: colors.primaryLight,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: AppText.overline(
                          canceledLabel,
                          color: colors.red,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: status == PastAppointmentStatus.Completed,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                          color: colors.green10,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: AppText.overline(
                          completedLabel,
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
                    AppText.body1(
                      " with ",
                      color: colors.kcCaptionGreyColor,
                    ),
                    AppText.body1(
                      userName!,
                    ),
                  ],
                ),
                verticalSpaceTiny,
                AppText.body1(
                  subscriptionType!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
