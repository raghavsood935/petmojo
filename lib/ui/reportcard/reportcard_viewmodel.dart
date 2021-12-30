import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/selectedStart.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/models/get_report_response.dart';
import 'package:tamely/models/params/get_runone_report_body.dart';
import 'package:tamely/models/params/get_runtwo_report_body.dart';
import 'package:tamely/models/params/set_runone_rating_body.dart';
import 'package:tamely/models/params/set_runtwo_rating_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class ReportCardViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('ReportCardViewModel');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  int noOfDogs;
  List<String> dogs;
  DateTime date;
  WalkNumber walkNumber;
  String appointmentId;

  ReportCardViewModel(
      this.noOfDogs, this.dogs, this.date, this.walkNumber, this.appointmentId);

  void navigateBack() {
    _navigationService.back();
  }

  // Dummy values

  String _day = "";
  String _dateString = "";
  String _time = "";

  // needs
  int _distance = 0;
  int _timeTook = 0;

  String _dogPicture =
      "https://i.pinimg.com/originals/52/01/67/520167f2ea3ef1ba760c387cfad75624.jpg";
  String _mapPicture =
      "https://i.pinimg.com/originals/52/01/67/520167f2ea3ef1ba760c387cfad75624.jpg";

  List<bool> _dogPoo = [false, true];
  List<bool> _dogPee = [false, true];

  String get day => _day;
  String get dateString => _dateString;
  String get dogPicture => _dogPicture;
  String get mapPicture => _mapPicture;
  String get time => _time;
  int get distance => _distance;
  int get timeTook => _timeTook;
  List<bool> get dogPoo => _dogPoo;
  List<bool> get dogPee => _dogPee;

  bool _gotRating = false;
  bool get gotRating => _gotRating;

  int _rating = 0;
  int get rating => _rating;

  final PageController _controller = PageController(initialPage: 0);

  PageController get controller => _controller;

  void starOnTaped(SelectedStar selectedStar) {
    if (selectedStar == SelectedStar.One) {
      _rating = 1;
    } else if (selectedStar == SelectedStar.Two) {
      _rating = 2;
    } else if (selectedStar == SelectedStar.Three) {
      _rating = 3;
    } else if (selectedStar == SelectedStar.Four) {
      _rating = 4;
    } else if (selectedStar == SelectedStar.Five) {
      _rating = 5;
    }
    notifyListeners();
    setRating();
    notifyListeners();
  }

  void setRating() {
    if (walkNumber == WalkNumber.One) {
      setRatingOne();
    } else if (walkNumber == WalkNumber.Two) {
      setRatingTwo();
    }
  }

  void setRatingOne() async {
    DateTime convertedDate = date.add(Duration(hours: 5, minutes: 30));
    int toTimeStamp = convertedDate.millisecondsSinceEpoch;
    try {
      if (await Util.checkInternetConnectivity()) {
        SetRunOneRatingBody setRunOneRatingBody =
            SetRunOneRatingBody(appointmentId, toTimeStamp, rating, true);
        BaseResponse<SendDataResponse> resultOne = await runBusyFuture(
            _tamelyApi.setRunOneRating(setRunOneRatingBody),
            throwException: true);
      } else {
        _snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void setRatingTwo() async {
    DateTime convertedDate = date.add(Duration(hours: 5, minutes: 30));
    int toTimeStamp = convertedDate.millisecondsSinceEpoch;
    try {
      if (await Util.checkInternetConnectivity()) {
        SetRunTwoRatingBody setRunTwoRatingBody =
            SetRunTwoRatingBody(appointmentId, toTimeStamp, rating, true);
        BaseResponse<SendDataResponse> resultOne = await runBusyFuture(
            _tamelyApi.setRunTwoRating(setRunTwoRatingBody),
            throwException: true);
      } else {
        _snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void getReport() {
    if (walkNumber == WalkNumber.One) {
      getReportOne();
    } else if (walkNumber == WalkNumber.Two) {
      getReportTwo();
    }
  }

  void getReportOne() async {
    DateTime convertedDate = date.add(Duration(hours: 5, minutes: 30));
    int toTimeStamp = convertedDate.millisecondsSinceEpoch;
    _day = DateFormat('EEEE').format(date);
    _dateString = DateFormat('MMMMd').format(date);
    _time = DateFormat('j').format(date);
    try {
      if (await Util.checkInternetConnectivity()) {
        GetReportOneBody getReportOneBody =
            GetReportOneBody(appointmentId, toTimeStamp, true);
        BaseResponse<GetReportResponse> resultOne = await runBusyFuture(
            _tamelyApi.getRunOneReport(getReportOneBody),
            throwException: true);
        if (resultOne.data != null) {
          _distance = resultOne.data!.distance!;
          _timeTook = resultOne.data!.time!;
          _rating = resultOne.data!.rating!;
          if (rating > 0) {
            _gotRating = true;
          } else if (rating == 0) {
            _gotRating = false;
          }
          _dogPicture = resultOne.data!.dogPicture!;
          _mapPicture = resultOne.data!.mapPicture!;

          List<GetPeeAndPooResponse> peeAndPoo = resultOne.data!.repeat!;
          _dogPee.clear();
          _dogPoo.clear();
          for (var each in peeAndPoo) {
            _dogPee.add(each.isPeed!);
            _dogPoo.add(each.isPooed!);
          }
        }
        notifyListeners();
      } else {
        _snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void getReportTwo() async {
    DateTime convertedDate = date.add(Duration(hours: 5, minutes: 30));
    int toTimeStamp = convertedDate.millisecondsSinceEpoch;
    _day = DateFormat('EEEE').format(date);
    _dateString = DateFormat('MMMMd').format(date);
    _time = DateFormat('j').format(date);
    try {
      if (await Util.checkInternetConnectivity()) {
        GetReportTwoBody getReportTwoBody =
            GetReportTwoBody(appointmentId, toTimeStamp, true);
        BaseResponse<GetReportResponse> resultOne = await runBusyFuture(
            _tamelyApi.getRunTwoReport(getReportTwoBody),
            throwException: true);
        if (resultOne.data != null) {
          _distance = resultOne.data!.distance!;
          _timeTook = resultOne.data!.time!;
          _rating = resultOne.data!.rating!;
          if (rating > 0) {
            _gotRating = true;
          } else if (rating == 0) {
            _gotRating = false;
          }
          _dogPicture = resultOne.data!.dogPicture!;
          _mapPicture = resultOne.data!.mapPicture!;

          List<GetPeeAndPooResponse> peeAndPoo = resultOne.data!.repeat!;
          _dogPee.clear();
          _dogPoo.clear();
          for (var each in peeAndPoo) {
            _dogPee.add(each.isPeed!);
            _dogPoo.add(each.isPooed!);
          }
        }
        notifyListeners();
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
