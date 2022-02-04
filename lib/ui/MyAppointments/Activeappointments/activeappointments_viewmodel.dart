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

  // dummy values

  List<ActiveAppointmentClass> _activeAppointments = [
    ActiveAppointmentClass(
      serviceType: ServiceType.DogRunning,
      userName: "Joeylene Rivera",
      userPicture:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      dogs: [
        "Gracy",
        "Tom",
      ],
      serviceName: dogWalkingTitle,
      subscriptionType: "(Monthly, 1/day)",
      dateAndTime: "24 Jan 2021 - 6-7PM",
      status: ActiveAppointmentStatus.Pending,
      showReorder: false,
      showBooking: false,
      bookingId: "1234",
    ),
    ActiveAppointmentClass(
      serviceType: ServiceType.DogTraining,
      userName: "Joeylene Rivera",
      userPicture:
          "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
      dogs: [
        "Gracy",
      ],
      serviceName: dogTrainingTitle,
      subscriptionType: "(Monthly, 1/day)",
      dateAndTime: "24 Jan 2021 - 6-7PM",
      status: ActiveAppointmentStatus.Accepted,
      showReorder: false,
      showBooking: false,
      bookingId: "1234",
    ),
  ];

  void toBooking() async {
    _navigationService.navigateTo(
      Routes.dRDogRunningBookingView,
    );
  }

  //List<ActiveAppointmentClass> _activeAppointments = [];

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
    }
    //getActiveAppointments();
  }

  final _tamelyApi = locator<TamelyApi>();

  void reorderARun(index) async {
    String? bookingId = activeAppointments[index].bookingId;
    try {
      if (await Util.checkInternetConnectivity()) {
        ReorderARunBody reorderARunBody = ReorderARunBody(bookingId!);
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
          List<AppointmentListResponse>? appointments =
              resultTwo.data!.appointmentsList;
          for (var each in appointments!) {
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

            if (each.serviceType == 0) {
              newAppointment.serviceType = ServiceType.DogRunning;
              newAppointment.serviceName = dogWalkingTitle;
            } else if (each.serviceType == 1) {
              newAppointment.serviceType = ServiceType.DogTraining;
              newAppointment.serviceName = dogTrainingTitle;
            }

            newAppointment.subscriptionType =
                "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfTimes}/day )";

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            DateTime dummyDate = DateTime.parse(dateDummyString!);
            dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;

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
            if (numberOfDaysLeft! <= 3 &&
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
        }

        // Active Appointments
        BaseResponse<MyAppointmentsResponse> resultOne = await runBusyFuture(
            _tamelyApi.getActiveAppointments(),
            throwException: true);
        if (resultOne.data != null) {
          List<AppointmentListResponse>? appointments =
              resultOne.data!.appointmentsList;
          for (var each in appointments!) {
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

            if (each.serviceType == 0) {
              newAppointment.serviceType = ServiceType.DogRunning;
              newAppointment.serviceName = dogWalkingTitle;
            } else if (each.serviceType == 1) {
              newAppointment.serviceType = ServiceType.DogTraining;
              newAppointment.serviceName = dogTrainingTitle;
            }

            newAppointment.subscriptionType =
                "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfTimes}/day )";

            var formatter = new DateFormat('dd-MMM-yyyy');

            String? dateDummyString = each.bookingDetails!.startDate;
            DateTime dummyDate = DateTime.parse(dateDummyString!);
            dateDummyString = formatter.format(dummyDate);
            newAppointment.dateAndTime = dateDummyString;

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
            if (numberOfDaysLeft! <= 3 &&
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
              newAppointment.showBooking = true;
            }

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
    // getActiveAppointments();
    log.d("futureToRun");
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
  bool? showReorder;
  bool? showBooking;
  ActiveAppointmentStatus? status;
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
    this.status,
    this.showReorder,
    this.showBooking,
  });
}
