import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';
import '../../../widgets/custom_date_picker.dart';
import '../../DogRunningService/DrAppointment/DrAppointmentdetails/dr_appointmentdetails_viewmodel.dart';

class DBAppointmentsDetailsView extends StatelessWidget {
  const DBAppointmentsDetailsView({Key? key, required this.appointmentId})
      //required this.appointmentId
      : super(key: key);

  final String appointmentId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DRAppointmentDetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        //model.navigateBack
                      )),
                  Center(
                    child: AppText.headingThree(
                      appointmentTitle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              spacedDividerSmall,
              verticalSpaceSmall,
              Center(
                //padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText.body2("Pet Boarding"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "(",
                          style:TextStyle(
                            color: colors.primary,
                            fontSize: 24,
                          )
                      ),
                        Text(
                            "03",
                            style:TextStyle(
                              color: colors.green10,
                              fontSize: 24,
                            )
                        ),
                        Text(
                            "/10 Days)",
                            style:TextStyle(
                              color: colors.primary,
                              fontSize: 24,
                            )
                        ),],
                    )
                  ],
                ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Number of Days",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    AppText.body("  (Calculated Per Night)")
                  ],
                ),
              ),
              verticalSpaceRegular,
              //dates
              Visibility(
                visible: model.serviceCompleted || model.serviceRejected,
                child: Column(
                  children: [
                    Container(
                      height: 32,
                      color:
                          model.serviceCompleted ? colors.green10 : colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          model.serviceCompleted
                              ? Image.asset('assets/images/House_tick.png')
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
              //Division 4 - Table
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
              verticalSpaceRegular,
              //table
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ExpansionTile(
                  iconColor: colors.black,
                  collapsedIconColor: colors.black,
                  title: AppText.body2(
                    "Check Status Thrice a Day",
                  ),
                  children: [
                    ReportTable(),
                  ],
                ),
              ),
              const Divider(
                color: colors.kcLightGreyBackground,
                height: 5.0,
                thickness: 5.0,
              ),
              verticalSpaceRegular,
              //booking details
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
                                      detailName: petTwoNameLabel,
                                      detailValue: "${model.dogs[1]}",
                                      clickable: true,
                                      onTapped: model.toDogProfileOne,
                                    ),
                                    verticalSpaceRegular,
                                  ],
                                ),
                          BookingItem(
                            detailName: "Charge/Night",
                            detailValue: "Rs. 567/-",
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
                          BookingItem(
                            detailName: "Download Invoice",
                            detailValue: "See My Invoice",
                            clickable: true,
                            onTapped: model.downloadInvoiceButton,
                          ),
                          verticalSpaceSmall,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //verticalSpaceSmall,
              //location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Container(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  width: 356,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110, 12, 96, 12),
                child: Center(
                  child: Container(
                    color: Colors.white,
                    child:Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: colors.primary,
                        ),
                        Text("Boarder Location",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),)
                      ],
                    )
                    ,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Container(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  width: 356,
                ),
              ),
            ],
          ),
        )),
      ),
      viewModelBuilder: () => DRAppointmentDetailsViewModel(appointmentId),
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

class ReportTable extends StatelessWidget {
  const ReportTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          toprowContainer(heading: "Updates"),
          toprowContainer(heading: "Morning"),
          toprowContainer(heading: "Afternoon"),
          toprowContainer(heading: "Evening"),
        ]),
        TableRow(children: [
          firstColumn(heading: "Photo/Video"),
          secondRow(photoAvailable: true),
          secondRow(photoAvailable: false),
          secondRow(photoAvailable: false),
        ]),
        TableRow(children: [
          firstColumn(heading: "Food"),
          restCells(taskDone: true),
          restCells(taskDone: false),
          restCells(taskDone: false),
        ]),
        TableRow(children: [
          firstColumn(heading: "Water"),
          restCells(taskDone: true),
          restCells(taskDone: false),
          restCells(taskDone: false),
        ]),
        TableRow(children: [
          firstColumn(heading: "Walk"),
          restCells(taskDone: true),
          restCells(taskDone: false),
          restCells(taskDone: false),
        ]),
      ],
    );
  }
}

class toprowContainer extends StatelessWidget {
  const toprowContainer({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 95,
        color: colors.primary,
        child: Center(
            child: Text(
          heading,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )));
  }
}

class firstColumn extends StatelessWidget {
  const firstColumn({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 95,
        color: colors.white,
        child: Center(
            child: Text(
          heading,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF878787),
            fontWeight: FontWeight.w500,
          ),
        )));
  }
}

class secondRow extends StatelessWidget {
  const secondRow(
      {Key? key, required this.photoAvailable})
      : super(key: key);

  final bool photoAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 95,
        color: colors.white,
        child: Center(
            child: photoAvailable
                ? GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View",
                      style: TextStyle(
                        fontSize: 14,
                        color: colors.primary,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : Text(
                    "NA",
                    style: TextStyle(
                      fontSize: 14,
                      color: colors.primary,
                      //fontWeight: FontWeight.w500,
                    ),
                  )));
  }
}

class restCells extends StatelessWidget {
  const restCells({Key? key,required this.taskDone})
      : super(key: key);

  final bool taskDone;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 95,
        color: colors.white,
        child: Center(
            child: taskDone
                ? Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: colors.primary),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              ),
            )
                : Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 11, horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: colors.primary),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                )
        ));
  }
}
