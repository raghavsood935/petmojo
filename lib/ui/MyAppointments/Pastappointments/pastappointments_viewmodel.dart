import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/enum/pastAppointmentStatus.dart';
import 'package:tamely/enum/selectService.dart';
import 'package:tamely/util/String.dart';

class PastAppointmentsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('PastAppointmentsViewModel');
  final _navigationService = locator<NavigationService>();

  String selectedServiceType = dogWalkingTitle;
  SelectService serviceType = SelectService.DogWalking;

  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  selectAccountType(String? newValue) {
    selectedServiceType = newValue!;
    notifyListeners();
  }

  // dummy values

  // List<PastAppointmentClass> _pastAppointments = [
  //   PastAppointmentClass(
  //     userName: "Joeylene Rivera",
  //     userPicture:
  //         "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
  //     dogs: [
  //       "Gracy",
  //       "Tom",
  //     ],
  //     serviceName: dogWalkingTitle,
  //     subscriptionType: "(Monthly, 1/day)",
  //     dateAndTime: "24 Jan 2021 - 6-7PM",
  //   ),
  //   PastAppointmentClass(
  //     userName: "Joeylene Rivera",
  //     userPicture:
  //         "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg",
  //     dogs: [
  //       "Gracy",
  //     ],
  //     serviceName: dogWalkingTitle,
  //     subscriptionType: "(Monthly, 1/day)",
  //     dateAndTime: "24 Jan 2021 - 6-7PM",
  //   ),
  // ];

  List<PastAppointmentClass> _pastAppointments = [];

  List<PastAppointmentClass> get pastAppointments => _pastAppointments;

  final _tamelyApi = locator<TamelyApi>();
  void getPastAppointments() async {
    print("4");
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        _pastAppointments.clear();

        BaseResponse<MyAppointmentsResponse> result = await runBusyFuture(
            _tamelyApi.getPastAppointments(),
            throwException: true);
        if (result.data != null) {
          List<AppointmentListResponse>? appointments =
              result.data!.appointmentsList;
          for (var each in appointments!) {
            PastAppointmentClass newAppointment =
                PastAppointmentClass(dogs: []);
            newAppointment.appointmentId = each.appointmentId;
            newAppointment.bookingId = each.bookingDetails!.bookingId;

            try {
              newAppointment.userName = each.user!.fullName!;
            } catch (e) {
              newAppointment.userName = "Dog Runner";
            }

            newAppointment.userPicture =
                "https://drive.google.com/file/d/16IaPIGrT8gkAx-UGzVD9GsWXZ2Slvq2X/view?usp=sharing";

            newAppointment.serviceName =
                each.serviceType == 0 ? dogWalkingTitle : dogWalkingTitle;
            newAppointment.subscriptionType =
                "(${each.bookingDetails!.package!.subscriptionType} , ${each.bookingDetails!.package!.numberOfTimes}/day )";
            newAppointment.dateAndTime = each.bookingDetails!.startDate;
            List<PetDetailsResponse>? petDetails = each.petDetails;
            for (var one in petDetails!) {
              newAppointment.dogs.add(one.petName!);
            }
            if (each.bookingStatus == 3) {
              newAppointment.status = PastAppointmentStatus.Completed;
            } else if (each.bookingStatus == 4) {
              newAppointment.status = PastAppointmentStatus.Canceled;
            }
            _pastAppointments.add(newAppointment);
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
    getPastAppointments();
    log.d("futureToRun");
  }
}

class PastAppointmentClass {
  String? appointmentId;
  String? bookingId;
  String? userName;
  String? userPicture;
  String? serviceName;
  List<String> dogs;
  String? subscriptionType;
  String? dateAndTime;
  PastAppointmentStatus? status;
  PastAppointmentClass({
    this.appointmentId,
    this.bookingId,
    this.userName,
    this.userPicture,
    this.serviceName,
    required this.dogs,
    this.subscriptionType,
    this.dateAndTime,
    this.status,
  });
}
