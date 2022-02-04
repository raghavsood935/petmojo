import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/enum/selectedStart.dart';
import 'package:tamely/enum/walkNumber.dart';
import 'package:tamely/models/get_appointment_details_response.dart';
import 'package:tamely/models/get_scroll_status_response.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/change_appointment_status_body.dart';
import 'package:tamely/models/params/change_runone_status_body.dart';
import 'package:tamely/models/params/change_runtwo_status_body.dart';
import 'package:tamely/models/params/get_appointment_details_body.dart';
import 'package:tamely/models/params/get_scroll_status_body.dart';
import 'package:tamely/models/params/set_testimony_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/utils.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/walkStatus.dart';

class DTAppointmentDetailsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('AppointmentDetailsViewModel');
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();

  final String bookingId;
  DTAppointmentDetailsViewModel(this.bookingId);

  String _userId = "";
  String _serviceProviderId = "";
  String _appointmentId = "";

  String get userId => _userId;
  String get serviceProviderId => _serviceProviderId;
  String get appointmentId => _appointmentId;

  // Dummy values

  int _bookingStatus = 0;
  int _serviceStatus = 0;

  int _numberOfPets = 1;

  List<String> _dogsSize = ["", ""];

  String _amount = "";
  String _subscriptionType = "Puppy Training";
  int _numberOfSessions = 16;
  int get numberOfSessions => _numberOfSessions;
  List<String> _dogs = ["", ""];
  List<String> _dogIds = ["", ""];
  int _numberOfDays = 7;
  int _numberOfWalk = 2;

  int _currentSession = 1;
  int get currentSession => _currentSession;
  void onSessionNumberTapped(int session) {
    _currentSession = session;
    print(currentSession);
    notifyListeners();
  }

  void toReport() {
    _navigationService.navigateTo(Routes.dTReportCardView,
        arguments: DTReportCardViewArguments(
          noOfDogs: numberOfPets,
          dogs: dogs,
          date: selectedDate,
          walkNumber: WalkNumber.One,
          appointmentId: bookingId,
        ));
  }

  String _userName = "";
  String _userPicture = "https://wallpaperaccess.com/full/2213424.jpg";

  String _walkOneTime = "";
  String _walkTwoTime = "";

  String _startDateString = "";
  String _endDateString = "";

  String _instructions = "";

  String _address = "";

  DateTime _todayDate = DateTime.now();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  DateTime _initialDate = DateTime.now();

  List<DateTime> _daysOff = [];

  List<String> _detailsReplies = ["", "", "", "", ""];

  DateTime _selectedDate = DateTime.now();

  String _cancelAmount = "";

  String get cancelAmount => _cancelAmount;
  List<String> get dogs => _dogs;
  List<String> get dogIds => _dogIds;
  int get numberOfPets => _numberOfPets;
  int get serviceStatus => _serviceStatus;
  int get bookingStatus => _bookingStatus;
  List<String> get dogsSize => _dogsSize;
  List<String> get detailsReplies => _detailsReplies;
  String get amount => _amount;
  String get userName => _userName;
  String get userPicture => _userPicture;
  String get subscriptionType => _subscriptionType;
  String get startDateString => _startDateString;
  String get endDateString => _endDateString;
  String get instructions => _instructions;
  String get address => _address;
  int get numberOfDays => _numberOfDays;
  int get numberOfWalk => _numberOfWalk;
  DateTime get todayDate => _todayDate;
  DateTime get startDate => _startDate;
  DateTime get endDate => _endDate;
  DateTime get initialDate => _initialDate;
  DateTime get selectedDate => _selectedDate;
  List<DateTime> get daysOff => _daysOff;
  String get walkOneTime => _walkOneTime;
  String get walkTwoTime => _walkTwoTime;

  // Status
  bool _showLiveOne = false;
  bool _showUpcomingOne = false;
  bool _showReportOne = false;

  bool _showLiveTwo = false;
  bool _showUpcomingTwo = false;
  bool _showReportTwo = false;

  bool get showLiveOne => _showLiveOne;
  bool get showUpcomingOne => _showUpcomingOne;
  bool get showReportOne => _showReportOne;

  bool get showLiveTwo => _showLiveTwo;
  bool get showUpcomingTwo => _showUpcomingTwo;
  bool get showReportTwo => _showReportTwo;

  WalkStatus _walkStatusOne = WalkStatus.showUpcoming;
  WalkStatus get walkStatusOne => _walkStatusOne;

  WalkStatus _walkStatusTwo = WalkStatus.showUpcoming;
  WalkStatus get walkStatusTwo => _walkStatusTwo;

  // bool - conditions

  bool _showDogRunner = false;
  bool get showDogRunner => _showDogRunner;

  bool _showNoDogRunner = true;
  bool get showNoDogRunner => _showNoDogRunner;

  bool _showCancelSubscription = true;
  bool get showCancelSubscription => _showCancelSubscription;

  bool _enableChat = false;
  bool get enableChat => _enableChat;

  bool _serviceCompleted = false;
  bool get serviceCompleted => _serviceCompleted;

  bool _serviceRejected = false;
  bool get serviceRejected => _serviceRejected;

  bool _showGetTestimony = false;
  bool get showGetTestimony => _showGetTestimony;

  int _rating = 0;
  int get rating => _rating;

  void walkOneStatus() {
    if (_walkStatusOne == WalkStatus.showReport) {
      _showLiveOne = false;
      _showUpcomingOne = false;
      _showReportOne = true;
    } else if (_walkStatusOne == WalkStatus.showUpcoming) {
      _showLiveOne = false;
      _showUpcomingOne = true;
      _showReportOne = false;
    }
    notifyListeners();
  }

  // navigation
  void navigateBack() {
    _navigationService.back();
  }

  void toDogProfileOne() {}

  void toDogProfileTwo() {}

  void toUserProfile() {}

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
  }

  TextEditingController testimony = TextEditingController();

  bool _loadingTestimony = false;

  bool get loadingTestimony => _loadingTestimony;

  void setTestimony() async {
    _loadingTestimony = true;
    try {
      if (await Util.checkInternetConnectivity()) {
        SetTestimonyBody setTestimonyBody =
            SetTestimonyBody(bookingId, testimony.text, rating);
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.setTestimony(setTestimonyBody),
            throwException: true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    _showGetTestimony = false;
    _loadingTestimony = false;
  }

  void cancelSubscriptionButton() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.CancelSubscriptionBottomSheet,
      description: cancelAmount,
    );
    if (sheetResponse!.confirmed) {
      if (sheetResponse.data) {
        cancel();
      }
    }
  }

  void cancel() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        ChangeAppointmentStatusBody registerBody =
            ChangeAppointmentStatusBody(bookingId, 4);
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.changeAppointmentStatus(registerBody),
            throwException: true);
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    _showDogRunner = false;
    _showNoDogRunner = false;
    _showCancelSubscription = false;
    _enableChat = false;
    _serviceCompleted = false;
    _serviceRejected = true;
    _showGetTestimony = true;
    notifyListeners();
  }

  // scroll implementation
  void getScrollStatus(DateTime date) async {
    DateTime convertedDate = date.add(Duration(hours: 5, minutes: 30));
    int toTimeStamp = convertedDate.millisecondsSinceEpoch;
    DateTime now = DateTime.now();
    try {
      if (await Util.checkInternetConnectivity()) {
        GetScrollStatusBody getScrollStatusBody =
            GetScrollStatusBody(bookingId, toTimeStamp);
        BaseResponse<GetScrollStatusResponse> result = await runBusyFuture(
            _tamelyApi.getScrollStatus(getScrollStatusBody),
            throwException: true);
        if (result.data != null) {
          List<WalkStatusResponse>? scroll = result.data!.scroll;
          print(scroll);
          if (numberOfWalk == 1) {
            if (scroll![0].walkStatus == 0) {
              // upcoming
              _walkStatusOne = WalkStatus.showUpcoming;
            } else if (scroll[0].walkStatus == 1) {
              // Started
              _walkStatusOne = WalkStatus.showLive;
            } else if (scroll[0].walkStatus == 2) {
              // Completed
              _walkStatusOne = WalkStatus.showReport;
            }
          }
          notifyListeners();
          if (numberOfWalk == 2) {
            if (scroll![0].walkStatus == 0) {
              // upcoming
              _walkStatusOne = WalkStatus.showUpcoming;
            } else if (scroll[0].walkStatus == 1) {
              // Started
              _walkStatusOne = WalkStatus.showLive;
            } else if (scroll[0].walkStatus == 2) {
              // Completed
              _walkStatusOne = WalkStatus.showReport;
            }

            if (scroll[1].walkStatus == 0) {
              // upcoming
              _walkStatusTwo = WalkStatus.showUpcoming;
            } else if (scroll[1].walkStatus == 1) {
              // Started
              _walkStatusTwo = WalkStatus.showLive;
            } else if (scroll[1].walkStatus == 2) {
              // Completed
              _walkStatusTwo = WalkStatus.showReport;
            }
          }
          walkOneStatus();
          notifyListeners();
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void toBookAgain() {
    _navigationService.navigateTo(Routes.dRDogRunningBookingView);
  }

  //
  void dateSelected(date) {
    print(date);
    _selectedDate = date;
    getScrollStatus(date);
    notifyListeners();
  }

  void getAppointments() async {
    print("4");
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        GetAppointmentDetailsBody registerBody =
            GetAppointmentDetailsBody(bookingId);
        BaseResponse<GetAppointmentDetailsResponse> result =
            await runBusyFuture(_tamelyApi.getAppointmentDetails(registerBody),
                throwException: true);
        if (result.data != null) {
          _serviceStatus = result.data!.serviceStatus!;
          _bookingStatus = result.data!.bookingStatus!;
          if (serviceStatus == 0) {
            // service not completed
            if (bookingStatus == 0) {
              // No dog runner assigned
              _showDogRunner = false;
              _showNoDogRunner = true;
              _showCancelSubscription = true;
              _enableChat = false;
              _serviceCompleted = false;
              _serviceRejected = false;
            } else if (bookingStatus == 1) {
              // accepted
              _showDogRunner = true;
              _showNoDogRunner = false;
              _showCancelSubscription = true;
              _enableChat = true;
              _serviceCompleted = false;
              _serviceRejected = false;
            } else if (bookingStatus == 4) {
              // rejected by the user
              _showDogRunner = false;
              _showNoDogRunner = false;
              _showCancelSubscription = false;
              _enableChat = false;
              _serviceCompleted = false;
              _serviceRejected = true;
            } else if (bookingStatus == 3) {
              // completed
              _showDogRunner = false;
              _showNoDogRunner = false;
              _showCancelSubscription = false;
              _enableChat = false;
              _serviceCompleted = true;
              _serviceRejected = false;
            }
          } else if (serviceStatus == 2) {
            // service completed
            _showDogRunner = false;
            _showNoDogRunner = false;
            _showCancelSubscription = false;
            _enableChat = false;
            _serviceCompleted = true;
            _serviceRejected = false;
          }

          _appointmentId = result.data!.appointmentId!;

          bool hasTestimony = result.data!.hasTestimony!;
          if (_serviceRejected || _serviceCompleted) {
            if (hasTestimony) {
              _showGetTestimony = false;
            } else {
              _showGetTestimony = true;
            }
          }

          _numberOfPets = result.data!.bookingDetails!.numberOfPets!;

          List<PetDetailsResponse>? petNames = result.data!.petDetails;
          _dogs.clear();
          for (var one in petNames!) {
            _dogs.add(one.petName!);
          }

          List<PetDetailsResponse>? petIds = result.data!.petDetails;
          _dogIds.clear();
          for (var one in petIds!) {
            _dogIds.add(one.petId!);
          }

          _dogsSize.clear();
          List<PetSizeResponse>? petSizes =
              result.data!.bookingDetails!.petDetails;
          for (var one in petSizes!) {
            _dogsSize.add(one.size!);
          }

          String oneAddress =
              result.data!.bookingDetails!.petRunningLocation!.addressLine1!;

          String twoAddress =
              result.data!.bookingDetails!.petRunningLocation!.addressLine2!;

          _address = "$oneAddress , $twoAddress";

          _amount = result.data!.bookingDetails!.package!.amount!;

          double amountDouble = double.parse(amount);
          double cancelAmountInt = amountDouble / 2;

          _cancelAmount = cancelAmountInt.toString();

          _subscriptionType =
              result.data!.bookingDetails!.package!.subscriptionType!;
          _numberOfDays = result.data!.bookingDetails!.package!.numberOfDays!;
          _numberOfWalk = result.data!.bookingDetails!.package!.numberOfTimes!;
          notifyListeners();

          try {
            _userName = result.data!.user!.fullName!;
          } catch (e) {
            _userName = "Dog Runner";
          }

          try {
            _userPicture = result.data!.user!.avatar!;
          } catch (e) {
            _userPicture =
                "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg";
          }

          _userId = result.data!.userId!;
          _serviceProviderId = result.data!.user!.userId!;

          _walkOneTime = result.data!.bookingDetails!.run1Time!;
          _walkTwoTime = result.data!.bookingDetails!.run2Time!;

          _instructions = result.data!.bookingDetails!.specialInstructions!;

          List<bool> petDetailList = [];

          bool detailOne =
              result.data!.bookingDetails!.petBehaviour!.petBehaviourOne!;
          bool detailTwo =
              result.data!.bookingDetails!.petBehaviour!.petBehaviourTwo!;
          bool detailThree =
              result.data!.bookingDetails!.petBehaviour!.petBehaviourThree!;
          bool detailFour =
              result.data!.bookingDetails!.petBehaviour!.petBehaviourFour!;
          bool detailFive =
              result.data!.bookingDetails!.petBehaviour!.petBehaviourFive!;

          petDetailList.add(detailOne);
          petDetailList.add(detailTwo);
          petDetailList.add(detailThree);
          petDetailList.add(detailFour);
          petDetailList.add(detailFive);

          String yes = "Yes";
          String no = "No";
          _detailsReplies.clear();
          for (var each in petDetailList) {
            if (each) {
              _detailsReplies.add(yes);
            } else {
              _detailsReplies.add(no);
            }
          }

          notifyListeners();

          var formatter = new DateFormat('dd-MM-yyyy');

          _startDateString = result.data!.bookingDetails!.startDate!;
          _startDate = DateTime.parse(startDateString);
          _startDateString = formatter.format(_startDate);
          notifyListeners();

          _endDate = _startDate.add(Duration(days: _numberOfDays));
          _endDate = _endDate.subtract(Duration(days: 1));
          _endDateString = formatter.format(_endDate);

          if (_todayDate.isBefore(_startDate) || _todayDate.isAfter(_endDate)) {
            _initialDate = _startDate;
          } else if (_todayDate.isAfter(_startDate) &&
              _todayDate.isBefore(_endDate)) {
            _initialDate = _todayDate;
          } else if (_todayDate == _startDate || _todayDate == _endDate) {
            _initialDate = _todayDate;
          }

          dateSelected(_initialDate);

          _daysOff.clear();
          if (_numberOfDays != 1) {
            List<DayOffResponse>? days = result.data!.bookingDetails!.daysOff;
            for (var one in days!) {
              _daysOff.add(DateTime.parse(one.off!));
            }
          } else if (_numberOfDays == 1) {
            for (int a = 1; a <= 6; a++) {
              DateTime newDate = _startDate.add(Duration(days: a));
              _daysOff.add(newDate);
            }
            _numberOfDays = 7;
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

  void toChat() {}

  @override
  Future<void> futureToRun() async {
    //getAppointments();
    log.d("futureToRun");
  }
}
