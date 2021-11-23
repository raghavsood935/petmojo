import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/get_data_body.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class AppointmentsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('SelectServiceViewModel');
  final _navigationService = locator<NavigationService>();

  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  void navigateBack() {
    _navigationService.back();
  }

  bool _hasAppointments = true;

  bool get hasAppointments => _hasAppointments;

  // void getActiveAppointments() async {
  //   print("4");
  //   try {
  //     if (await Util.checkInternetConnectivity()) {
  //       GetDataBody registerBody = GetDataBody("sp");
  //       BaseResponse<MyAppointmentsResponse> result = await runBusyFuture(
  //           _tamelyApi.getActiveAppointments(registerBody),
  //           throwException: true);
  //       if (result.data != null) {
  //         List<AppointmentListResponse>? appointments =
  //             result.data!.appointmentsList;
  //         if (appointments!.length != 0) {
  //           _hasAppointments = true;
  //         } else {
  //           _hasAppointments = false;
  //         }
  //         notifyListeners();
  //       }
  //     } else {
  //       snackBarService.showSnackbar(message: "No Internet connection");
  //     }
  //   } on ServerError catch (e) {
  //     log.e(e.toString());
  //   }
  // }

  @override
  Future<void> futureToRun() async {
    //getActiveAppointments();
    log.d("futureToRun");
  }
}
