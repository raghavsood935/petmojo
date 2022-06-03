import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/has_appointments_response.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/get_data_body.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class MyPastAppointmentsViewModel extends ServicesViewModel {
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

        BaseResponse<HasAppointmentsResponse> resultOne =
            await _tamelyApi.hasAppointments();

        if (resultOne.data != null) {
          _hasAppointments = resultOne.data!.hasAppointments!;
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
}
