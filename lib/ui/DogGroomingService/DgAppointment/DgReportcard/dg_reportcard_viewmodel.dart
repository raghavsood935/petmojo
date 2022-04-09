import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/get_training_report_response.dart';
import 'package:tamely/models/params/get_training_report_body.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class DGReportCardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('ReportCardViewModel');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  int sessionNo;
  String appointmentId;

  DGReportCardViewModel(this.appointmentId, this.sessionNo);

  void navigateBack() {
    _navigationService.back();
  }

  // Dummy values

  String _day = "";
  String _dateString = "";
  String _time = "";

  String get day => _day;
  String get dateString => _dateString;
  String get time => _time;

  // needs

  List<String> _dogs = [];
  List<String> get dogs => _dogs;

  int _duration = 0;
  int get duration => _duration;

  int _timeIntFormat = 0;
  int get timeIntFormat => _timeIntFormat;

  String _dogPicture =
      "https://i.pinimg.com/originals/52/01/67/520167f2ea3ef1ba760c387cfad75624.jpg";
  String get dogPicture => _dogPicture;

  void getReport() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        GetTrainingReportBody getTrainingReportBody =
            GetTrainingReportBody(appointmentId, sessionNo);
        BaseResponse<GetTrainingReportResponse> resultOne = await runBusyFuture(
            _tamelyApi.getTrainingReport(getTrainingReportBody),
            throwException: true);
        if (resultOne.data != null) {
          _duration = resultOne.data!.details!.duration!;
          _timeIntFormat = resultOne.data!.details!.time!;
          _dogPicture = resultOne.data!.details!.picture!;

          List<GetPetNamesResponse> pet = resultOne.data!.pet!;
          for (var each in pet) {
            _dogs.add(each.name!);
          }

          DateTime convertedDate =
              DateTime.fromMillisecondsSinceEpoch(timeIntFormat);
          _day = DateFormat('EEEE').format(convertedDate);
          _dateString = DateFormat('MMMMd').format(convertedDate);
          _time = DateFormat('j').format(convertedDate);
        }
        notifyListeners();
        _dialogService.completeDialog(DialogResponse(confirmed: true));
      } else {
        _snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    getReport();
    log.d("futureToRun");
  }
}
