import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/enum/service_type.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/reorder_a_run_body.dart';
import 'package:tamely/models/reorder_a_run_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/activeAppointmentStatus.dart';
import 'package:tamely/util/String.dart';
import 'package:intl/intl.dart';

class ActiveAppointmentsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('ActiveAppointmentsViewModel');
  final _navigationService = locator<NavigationService>();

  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();

  String selectedServiceType = dogWalkingTitle;
  final _dialogService = locator<DialogService>();
  //SelectService serviceType = SelectService.DogWalking;

  selectAccountType(String? newValue) {
    selectedServiceType = newValue!;
    notifyListeners();
  }

  String ongoingOrUpcoming = upcomingLabel;

  // dummy values

  List<ActiveAppointmentClass> _activeAppointments = [
    // ActiveAppointmentClass(
    //   serviceType: ServiceType.DogRunning,
    //   userName: "Joeylene Rivera",
    //   userPicture:
    //       "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
    //   dogs: [
    //     "Gracy",
    //     "Tom",
    //   ],
    //   serviceName: dogWalkingTitle,
    //   subscriptionType: "(Monthly, 1/day)",
    //   dateAndTime: "24 Jan 2021 - 6-7PM",
    //   status: ActiveAppointmentStatus.Pending,
    //   showReorder: false,
    //   showBooking: false,
    //   bookingId: "1234",
    // ),
    //   ActiveAppointmentClass(
    //     serviceType: ServiceType.DogTraining,
    //     userName: "Joeylene Rivera",
    //     userPicture:
    //         "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
    //     dogs: [
    //       "Gracy",
    //     ],
    //     serviceName: dogTrainingTitle,
    //     subscriptionType: "(Monthly, 1/day)",
    //     dateAndTime: "24 Jan 2021 - 6-7PM",
    //     status: ActiveAppointmentStatus.Accepted,
    //     showReorder: false,
    //     showBooking: false,
    //     bookingId: "1234",
    //   ),
    // ActiveAppointmentClass(
    //   serviceType: ServiceType.DogGrooming,
    //   dogs: [
    //     "Gracy",
    //   ],
    //   showBooking: true,
    //   showReorder: false,
    //   appointmentId: "A1111",
    //   bookingId: "B1111",
    //   subscriptionType: "One time",
    //   dateAndTime: "24 Jan 2021",
    //   status: ActiveAppointmentStatus.Pending,
    //   serviceName: "Bath and Brush",
    //   userName: "Joeylene Rivera",
    //   userPicture:
    //       "https://i.picsum.photos/id/696/200/300.jpg?hmac=Ukxvga_1GYxgfAqzwDhBPfVta6-hJKUhayVlI1yMIdk"
    // )
  ];

  void toBooking(index) async {
    ServiceType? serviceType = activeAppointments[index].serviceType;
    if (serviceType == ServiceType.DogRunning) {
      _navigationService.navigateTo(
        Routes.dRDogRunningBookingView,
      );
    } else if (serviceType == ServiceType.DogTraining) {
      _navigationService.navigateTo(
        Routes.dTDogTrainingBookingView,
      );
    } else if (serviceType == ServiceType.DogGrooming) {
      _navigationService.replaceWith(
        Routes.dGPaymentView,
        arguments: DGPaymentViewArguments(
            amount: activeAppointments[index].amount!,
            bookingId: activeAppointments[index].bookingId!),
      );
    }
  }

  // List<ActiveAppointmentClass> _activeAppointments = [

  // ];

  List<ActiveAppointmentClass> get activeAppointments => _activeAppointments;

  void toAppointmentDetails(index) async {
    String? bookingId = activeAppointments[index].bookingId;
    ServiceType? serviceType = activeAppointments[index].serviceType;
    if (serviceType == ServiceType.DogRunning) {
      await _navigationService.navigateTo(
        Routes.dRAppointmentDetailsView,
        arguments: DRAppointmentDetailsViewArguments(appointmentId: bookingId!),
      );
    } else if (serviceType == ServiceType.DogTraining) {
      await _navigationService.navigateTo(
        Routes.dTAppointmentDetailsView,
        arguments: DTAppointmentDetailsViewArguments(appointmentId: bookingId!),
      );
    } else if (serviceType == ServiceType.DogGrooming) {
      await _navigationService.navigateTo(
        Routes.dGAppointmentDetailsView,
        arguments: DGAppointmentDetailsViewArguments(appointmentId: bookingId!),
      );
    }
    getActiveAppointments();
  }

  final _tamelyApi = locator<TamelyApi>();

  void reorderARun(index) async {
    String? bookingId = activeAppointments[index].bookingId;
    ServiceType? serviceType = activeAppointments[index].serviceType;
    try {
      if (await Util.checkInternetConnectivity()) {
        ReorderARunBody reorderARunBody = ReorderARunBody(bookingId!);
        if (serviceType == ServiceType.DogRunning) {
          BaseResponse<ReorderARunResponse> result = await runBusyFuture(
              _tamelyApi.reorderARun(reorderARunBody),
              throwException: true);
          if (result.data != null) {
            bool? success = result.data!.success;
            String? newBookingId = result.data!.newBookingId;
            String? newAmount = result.data!.newAmount;
            double? newAmountDouble = double.parse(newAmount!);
            if (success!) {
              activeAppointments[index].showReorder = false;
              _navigationService.replaceWith(
                Routes.dRPaymentView,
                arguments: DRPaymentViewArguments(
                    amount: newAmountDouble.toInt(), bookingId: newBookingId!),
              );
            }
          }
        } else if (serviceType == ServiceType.DogTraining) {
          BaseResponse<ReorderARunResponse> result = await runBusyFuture(
              _tamelyApi.reorderATraining(reorderARunBody),
              throwException: true);
          if (result.data != null) {
            bool? success = result.data!.success;
            String? newBookingId = result.data!.newBookingId;
            String? newAmount = result.data!.newAmount;
            double? newAmountDouble = double.parse(newAmount!);
            if (success!) {
              activeAppointments[index].showReorder = false;
              _navigationService.replaceWith(
                Routes.dRPaymentView,
                arguments: DRPaymentViewArguments(
                    amount: newAmountDouble.toInt(), bookingId: newBookingId!),
              );
            }
          }
        }
        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void getActiveAppointments() async {
    print("4");
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        _activeAppointments.clear();

        // Booked Appointments
        BaseResponse<MyAppointmentsResponse> resultTwo = await runBusyFuture(
            _tamelyApi.getBookedAppointments(),
            throwException: true);
        if (resultTwo.data != null) {
          // Dog Running
          List<DogRunningAppointmentListResponse>? dogRunningAppointments =
              resultTwo.data!.dogRunningAppointmentsList;
          for (var each in dogRunningAppointments!) {
            ActiveAppointmentClass newAppointment =
                ActiveAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://dogexpress.in/wp-content/uploads/2021/10/What-Dog-Walking-Services-Should-You-Choose-In-The-US.jpg";

            newAppointment.serviceType = ServiceType.DogRunning;
            newAppointment.serviceName = dogWalkingTitle;

            // newAppointment.subscriptionType =
            //     "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfTimes}/day )";
            newAppointment.subscriptionType=each.bookingDetails!.package!.subscriptionType;

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            String myDate  = DateTime.parse(each.createdAt!).add(Duration(hours: 5,minutes: 30)).toString();
            newAppointment.bookedDate=myDate.split(" ")[0];
            String time=myDate.split(" ")[1];
            List newList=time.split(":");
            newList.removeAt(2);
            newAppointment.bookedTime=convertTo12(newList.join(":"));

            // newAppointment.bookedDateTime=each.bookingDetails!.createdAt;
            // DateTime dummyDate = DateTime.parse(dateDummyString!);
            // dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;


            if (DateTime.parse(dateDummyString!).isAfter(returnNow(DateTime.now()))) {
              newAppointment.upcomingOrOngoing = "Upcoming";
            } else {
              newAppointment.upcomingOrOngoing = "Ongoing";
            }

            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 0) {
              newAppointment.status = ActiveAppointmentStatus.Pending;
            } else if (each.bookingStatus == 1) {
              newAppointment.status = ActiveAppointmentStatus.Accepted;
            }

            // Days Left
            int? numberOfDaysLeft = each.daysLeft;
            bool? isReorderDone = each.isReorderDone;
            String? subscriptionType =
                each.bookingDetails!.package!.subscriptionType;
            if (numberOfDaysLeft! <= 5 &&
                subscriptionType != "Free" &&
                isReorderDone == false) {
              newAppointment.showReorder = true;
            } else {
              newAppointment.showReorder = false;
            }

            // Free Walk
            if (subscriptionType == "Free") {
              newAppointment.showBooking = true;
            } else {
              newAppointment.showBooking = false;
            }

            _activeAppointments.add(newAppointment);
          }

          notifyListeners();

          // Dog Training
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointments =
              resultTwo.data!.dogTrainingAppointmentsList;
          for (var each in dogTrainingAppointments!) {
            ActiveAppointmentClass newAppointment =
                ActiveAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://dogexpress.in/wp-content/uploads/2021/10/What-Dog-Walking-Services-Should-You-Choose-In-The-US.jpg";

            newAppointment.serviceType = ServiceType.DogTraining;
            newAppointment.serviceName = dogTrainingTitle;

            // newAppointment.subscriptionType =
            //     "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfSessions}/day )";
            newAppointment.subscriptionType=each.bookingDetails!.package!.subscriptionType;

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            String myDate  = DateTime.parse(each.createdAt!).add(Duration(hours: 5,minutes: 30)).toString();
            newAppointment.bookedDate=myDate.split(" ")[0];
            String time=myDate.split(" ")[1];
            List newList=time.split(":");
            newList.removeAt(2);
            newAppointment.bookedTime=convertTo12(newList.join(":"));
            // DateTime dummyDate = DateTime.parse(dateDummyString!);
            // dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;


            if (DateTime.parse(dateDummyString!).isAfter(returnNow(DateTime.now()))) {
              newAppointment.upcomingOrOngoing = "Upcoming";
            } else {
              newAppointment.upcomingOrOngoing = "Ongoing";
            }

            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 0) {
              newAppointment.status = ActiveAppointmentStatus.Pending;
            } else if (each.bookingStatus == 1) {
              newAppointment.status = ActiveAppointmentStatus.Accepted;
            }

            // Days Left
            int? numberOfDaysLeft = each.sessionsLeft;
            bool? isReorderDone = each.isReorderDone;
            String? subscriptionType =
                each.bookingDetails!.package!.subscriptionType;
            print("sessions left");
            print(newAppointment.bookedTime);
            print(numberOfDaysLeft);
            if (numberOfDaysLeft! <= 5 &&
                subscriptionType != "Free" &&
                isReorderDone == false) {

              newAppointment.showReorder = true;
            } else {
              newAppointment.showReorder = false;
            }

            // Free Walk
            if (subscriptionType == "Free") {
              newAppointment.showBooking = true;
            } else {
              newAppointment.showBooking = false;
            }

            _activeAppointments.add(newAppointment);
          }

          // Dog grooming
          List<DogGroomingAppointmentListResponse>? dogGroomingAppointments =
              resultTwo.data!.dogGroomingAppointmentsList;
          for (var each in dogGroomingAppointments!) {
            if (each.bookingDetails!.paymentDetails!.paymentStatus == 0) {
              // Status 0 is payment not done
              // Dont show it in bookings
              continue;
            }
            ActiveAppointmentClass newAppointment =
                ActiveAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://dogexpress.in/wp-content/uploads/2021/10/What-Dog-Walking-Services-Should-You-Choose-In-The-US.jpg";

            newAppointment.serviceType = ServiceType.DogGrooming;
            newAppointment.serviceName =
                each.bookingDetails!.package!.description;
            newAppointment.amount = each.bookingDetails!.paymentDetails!.amount;
            // newAppointment.subscriptionType =
            //     "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfSessions}/day )";

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            String timeString =
                each.bookingDetails!.sessionDetails!.sessionTime!;
            String myDate  = DateTime.parse(each.createdAt!).add(Duration(hours: 5,minutes: 30)).toString();
            newAppointment.bookedDate=myDate.split(" ")[0];
            String time=myDate.split(" ")[1];
            List newList=time.split(":");
            newList.removeAt(2);
            newAppointment.bookedTime=convertTo12(newList.join(":"));
            // DateTime dummyDate = DateTime.parse(dateDummyString!);
            // dateDummyString = formatter.format(dummyDate);
            // newAppointment.dateAndTime = dateDummyString + "\n" + timeString;
            newAppointment.dateAndTime = dateDummyString;

            if (DateTime.parse(dateDummyString!).isAfter(returnNow(DateTime.now()))) {
              newAppointment.upcomingOrOngoing = "Upcoming";
            } else {
              newAppointment.upcomingOrOngoing = "Ongoing";
            }

            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 0) {
              newAppointment.status = ActiveAppointmentStatus.Pending;
            } else if (each.bookingStatus == 1) {
              newAppointment.status = ActiveAppointmentStatus.Accepted;
            }
            newAppointment.showReorder = false;
            newAppointment.showBooking = false;
            bool isPaid = false;
            int paymentStatus =
                each.bookingDetails!.paymentDetails!.paymentStatus ?? 0;
            if (paymentStatus == 1) {
              isPaid = true;
            }
            if (paymentStatus == 2) {
              isPaid = false;
            }
            // Use showBooking parameter to show Pay Now

            newAppointment.showBooking = !isPaid;

            // Days Left
            // int? numberOfDaysLeft = each.sessionsLeft;
            // bool? isReorderDone = each.isReorderDone;
            // String? subscriptionType =
            //     each.bookingDetails!.package!.subscriptionType;
            // if (numberOfDaysLeft! <= 5 &&
            //     subscriptionType != "Free" &&
            //     isReorderDone == false) {
            //   newAppointment.showReorder = true;
            // } else {
            //   newAppointment.showReorder = false;
            // }

            // Free Walk
            // if (subscriptionType == "Free") {
            //   newAppointment.showBooking = true;
            // } else {
            //   newAppointment.showBooking = false;
            // }

            _activeAppointments.add(newAppointment);
            print('adding to ${_activeAppointments}');
          }
          notifyListeners();
        }

        // Active Appointments
        BaseResponse<MyAppointmentsResponse> resultOne = await runBusyFuture(
            _tamelyApi.getActiveAppointments(),
            throwException: true);
        if (resultOne.data != null) {
          // Dog Running
          List<DogRunningAppointmentListResponse>? dogRunningAppointments =
              resultOne.data!.dogRunningAppointmentsList;
          for (var each in dogRunningAppointments!) {
            ActiveAppointmentClass newAppointment =
                ActiveAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://drive.google.com/file/d/1d0Et-uR0iNQoXWdBk5N5IhOAZ2RMdW_H/view?usp=sharing";

            newAppointment.serviceType = ServiceType.DogRunning;
            newAppointment.serviceName = dogWalkingTitle;

            // newAppointment.subscriptionType =
            //     "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfTimes}/day )";

            newAppointment.subscriptionType=each.bookingDetails!.package!.subscriptionType;

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            String myDate  = DateTime.parse(each.createdAt!).add(Duration(hours: 5,minutes: 30)).toString();
            newAppointment.bookedDate=myDate.split(" ")[0];
            String time=myDate.split(" ")[1];
            List newList=time.split(":");
            newList.removeAt(2);
            newAppointment.bookedTime=convertTo12(newList.join(":"));
            // DateTime dummyDate = DateTime.parse(dateDummyString!);
            // dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;

            if (DateTime.parse(dateDummyString!).isAfter(returnNow(DateTime.now()))) {
              newAppointment.upcomingOrOngoing = "Upcoming";
            } else {
              newAppointment.upcomingOrOngoing = "Ongoing";
            }

            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 0) {
              newAppointment.status = ActiveAppointmentStatus.Pending;
            } else if (each.bookingStatus == 1) {
              newAppointment.status = ActiveAppointmentStatus.Accepted;
            }

            // Days Left
            int? numberOfDaysLeft = each.daysLeft;
            bool? isReorderDone = each.isReorderDone;
            String? subscriptionType =
                each.bookingDetails!.package!.subscriptionType;
            if (numberOfDaysLeft! <= 5 &&
                subscriptionType != "Free" &&
                isReorderDone == false) {
              newAppointment.showReorder = true;
            } else {
              newAppointment.showReorder = false;
            }

            // Free Walk
            if (subscriptionType == "Free") {
              newAppointment.showBooking = true;
            } else {
              newAppointment.showBooking = false;
            }
            _activeAppointments.add(newAppointment);
          }

          notifyListeners();

          // Dog Training
          List<DogTrainingAppointmentListResponse>? dogTrainingAppointments =
              resultOne.data!.dogTrainingAppointmentsList;
          for (var each in dogTrainingAppointments!) {
            ActiveAppointmentClass newAppointment =
                ActiveAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://drive.google.com/file/d/1d0Et-uR0iNQoXWdBk5N5IhOAZ2RMdW_H/view?usp=sharing";

            newAppointment.serviceType = ServiceType.DogTraining;
            newAppointment.serviceName = dogTrainingTitle;

            // newAppointment.subscriptionType =
            //     "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfSessions}/day )";
            newAppointment.subscriptionType=each.bookingDetails!.package!.subscriptionType;

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            String myDate  = DateTime.parse(each.createdAt!).add(Duration(hours: 5,minutes: 30)).toString();
            newAppointment.bookedDate=myDate.split(" ")[0];
            String time=myDate.split(" ")[1];
            List newList=time.split(":");
            newList.removeAt(2);
            newAppointment.bookedTime=convertTo12(newList.join(":"));
            // DateTime dummyDate = DateTime.parse(dateDummyString!);
            // dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;

            if (DateTime.parse(dateDummyString!).isAfter(returnNow(DateTime.now()))) {
              newAppointment.upcomingOrOngoing = "Upcoming";
            } else {
              newAppointment.upcomingOrOngoing = "Ongoing";
            }

            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 0) {
              newAppointment.status = ActiveAppointmentStatus.Pending;
            } else if (each.bookingStatus == 1) {
              newAppointment.status = ActiveAppointmentStatus.Accepted;
            }

            // Days Left
            int? numberOfDaysLeft = each.sessionsLeft;
            bool? isReorderDone = each.isReorderDone;
            String? subscriptionType =
                each.bookingDetails!.package!.subscriptionType;
            print("sessions left");
            print(newAppointment.bookedTime);
            print(numberOfDaysLeft);
            if (numberOfDaysLeft! <= 5 &&
                subscriptionType != "Free" &&
                isReorderDone == false) {
              print("sessions left");
              print(newAppointment.bookedTime);
              print(numberOfDaysLeft);
              newAppointment.showReorder = true;
            } else {
              newAppointment.showReorder = false;
            }

            // Free Walk
            if (subscriptionType == "Free") {
              newAppointment.showBooking = true;
            } else {
              newAppointment.showBooking = false;
            }
            print(newAppointment.toString());
            _activeAppointments.add(newAppointment);
          }
          notifyListeners();
        }
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
  }

  @override
  Future<void> futureToRun() async {
    getActiveAppointments();
    log.d("futureToRun");
  }

  DateTime returnNow(DateTime nowDate){
    final DateTime now = nowDate;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    return DateTime.parse(formatted);
  }

  String convertTo12(String hhMM) {
    String amOrPm="";
    final arr = hhMM.split(':');
    var h = int.tryParse(arr[0]);
    amOrPm=(h! >=12 ?"PM":"AM");
    return '${h! > 12 ? h % 12 : h}:${arr[1]} $amOrPm';
  }
}

class ActiveAppointmentClass {
  ServiceType? serviceType;
  String? appointmentId;
  String? bookingId;
  String? userName;
  String? userPicture;
  String? serviceName;
  List<String> dogs;
  String? subscriptionType;
  String? dateAndTime;
  String? bookedDate;
  String? bookedTime;

  bool? showReorder;
  bool? showBooking;
  ActiveAppointmentStatus? status;
  int? amount;
  String? upcomingOrOngoing;
  ActiveAppointmentClass({
    this.serviceType,
    this.appointmentId,
    this.bookingId,
    this.userName,
    this.userPicture,
    this.serviceName,
    required this.dogs,
    this.subscriptionType,
    this.dateAndTime,
    this.bookedDate,
    this.bookedTime,
    this.status,
    this.showReorder,
    this.showBooking,
    this.amount,
    this.upcomingOrOngoing,
  });
}
