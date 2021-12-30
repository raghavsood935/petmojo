import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
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

  final _dialogService = locator<DialogService>();

  void navigateBack() {
    _navigationService.back();
  }

  bool _hasAppointments = false;

  bool get hasAppointments => _hasAppointments;

  void getActiveAppointments() async {
    print("4");
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);

        BaseResponse<MyAppointmentsResponse> resultOne = await runBusyFuture(
            _tamelyApi.getBookedAppointments(),
            throwException: true);

        BaseResponse<MyAppointmentsResponse> resultTwo = await runBusyFuture(
            _tamelyApi.getActiveAppointments(),
            throwException: true);

        BaseResponse<MyAppointmentsResponse> resultThree = await runBusyFuture(
            _tamelyApi.getPastAppointments(),
            throwException: true);

        List<AppointmentListResponse>? appointmentsOne = [];
        List<AppointmentListResponse>? appointmentsTwo = [];
        List<AppointmentListResponse>? appointmentsThree = [];
        if (resultOne.data != null) {
          appointmentsOne = resultOne.data!.appointmentsList;
        }

        if (resultTwo.data != null) {
          appointmentsTwo = resultTwo.data!.appointmentsList;
        }

        if (resultThree.data != null) {
          appointmentsThree = resultThree.data!.appointmentsList;
        }

        if (appointmentsOne!.length != 0 ||
            appointmentsTwo!.length != 0 ||
            appointmentsThree!.length != 0) {
          _hasAppointments = true;
        } else {
          _hasAppointments = false;
        }

        notifyListeners();

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
}
