import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/get_training_report_response.dart';
import 'package:tamely/models/params/get_s3_url_body.dart';
import 'package:tamely/models/params/get_training_report_body.dart';
import 'package:tamely/models/url_response.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:video_player/video_player.dart';

class DTReportCardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('ReportCardViewModel');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  int sessionNo;
  String appointmentId;

  DTReportCardViewModel(this.appointmentId, this.sessionNo);

  VideoPlayerController? _videoController;
  VideoPlayerController? get videoController => _videoController;

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

  List<String> _dogs = ["Pet"];
  List<String> get dogs => _dogs;

  int _duration = 0;
  int get duration => _duration;

  int _timeIntFormat = 0;
  int get timeIntFormat => _timeIntFormat;

  String _dogPicture =
      "https://i.pinimg.com/originals/52/01/67/520167f2ea3ef1ba760c387cfad75624.jpg";
  String get dogPicture => _dogPicture;

  String _dogVideo = "";
  String get dogVideo => _dogVideo;

  bool _isVideoAvailable = false;
  bool get isVideoAvailable => _isVideoAvailable;

  void getReport() async {
    print("Getting report");
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
          if (resultOne.data!.details!.video != "NULL") {
            await getS3VideoUrl(resultOne.data!.details!.video!);
            _isVideoAvailable = true;
            notifyListeners();
            _videoController = VideoPlayerController.network(dogVideo)
              ..initialize().then((e) {
                notifyListeners();
              });
          } else {
            getS3Url(resultOne.data!.details!.picture!);
          }
          _dogs.clear();
          notifyListeners();
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

  Future<void> getS3Url(String awsKey) async {
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        GetS3UrlBody getRunOneReportBody = GetS3UrlBody(awsKey);
        BaseResponse<UrlResponse> result = await runBusyFuture(
            _tamelyApi.getS3Url(getRunOneReportBody),
            throwException: true);
        if (result.data != null) {
          _dogPicture = result.data!.url!;
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

  Future<void> getS3VideoUrl(String awsKey) async {
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        GetS3UrlBody getRunOneReportBody = GetS3UrlBody(awsKey);
        BaseResponse<UrlResponse> result = await runBusyFuture(
            _tamelyApi.getS3VideoUrl(getRunOneReportBody),
            throwException: true);
        if (result.data != null) {
          _dogVideo = result.data!.url!;
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

  void pauseOrPlay() {
    _videoController!.value.isPlaying
        ? _videoController!.pause()
        : _videoController!.play();
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    getReport();
    log.d("futureToRun");
  }
}
