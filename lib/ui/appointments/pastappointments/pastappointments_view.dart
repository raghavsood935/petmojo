import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/enum/pastAppointmentStatus.dart';
import 'package:tamely/ui/appointments/pastappointments/pastappointments_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

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
                      spacedDividerSmall,
                ),
              ),
              spacedDividerSmall,
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
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 45.0 / 2,
            backgroundColor: colors.primaryLight,
            child: Image.asset("assets/images/service_selected.png"),
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
              // verticalSpaceTiny,
              // AppText.body1(
              //   "$upcomingLabel - $dateAndTime!",
              // ),
              verticalSpaceSmall,
              status == PastAppointmentStatus.Canceled
                  ? Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        color: colors.primaryLight,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: AppText.overline(
                        canceledLabel,
                        color: colors.red,
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        color: colors.green10,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: AppText.overline(
                        completedLabel,
                        color: colors.green70,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
