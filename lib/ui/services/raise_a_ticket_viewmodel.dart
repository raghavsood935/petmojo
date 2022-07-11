import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import '../../api/base_response.dart';
import '../../enum/DialogType.dart';
import '../../models/params/submit_ticket_body.dart';
import '../../models/send_data_response.dart';
import '../../models/session_tracker_response.dart';
import '../../util/utils.dart';


class RaiseTicketsViewModel extends FutureViewModel {
  final log = getLogger('ServicesViewModel');
  String _location = "T-129 Emerald Hills Gurugram...";
  int _noOfAppointments = 3;
  String _appointmentDate = "14 Oct 2021";
  String _appointmentType = "Pet boarding";
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();

  TextEditingController _titleController=TextEditingController();
  TextEditingController _categoryController=TextEditingController();
  TextEditingController _descriptionController=TextEditingController();
  TextEditingController _phoneNumberController=TextEditingController();

  TextEditingController get titleController=>_titleController;
  TextEditingController get categoryController=>_categoryController;
  TextEditingController get descriptionController=>_descriptionController;
  TextEditingController get phoneNumberController=>_phoneNumberController;


  Future<void> onSubmit() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        SubmitTicketBody submitTicketBody =
        SubmitTicketBody(titleController.text, categoryController.text, descriptionController.text,phoneNumberController.text);
    BaseResponse<SendDataResponse> resultOne = await runBusyFuture(
    _tamelyApi.submitTicket(submitTicketBody),
    throwException: true);
    print(resultOne.data);
    if (resultOne.data != null) {
      print("let check the result");
      print(resultOne.data?.success);
      titleController.text="";
      categoryController.text="";
      descriptionController.text="";
      phoneNumberController.text="";
      _snackBarService.showSnackbar(message: "Submitted");
    }
    notifyListeners();
    } else {
    _snackBarService.showSnackbar(message: "No Internet connection");
    }
    } on ServerError catch (e) {
    log.e(e.toString());
    }
  }

  Future init() async {
    print("Initialising services");
    // getSessionTracker();
  }



  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }
}