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
import 'package:url_launcher/url_launcher.dart';

import '../../../DogTrainingService/DtAppointment/DtInvoice/dt_invoice_viewmodel.dart';

class DRAppointmentDetailsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('AppointmentDetailsViewModel');
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();

  final String bookingId;
  DRAppointmentDetailsViewModel(this.bookingId);

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
  List<DateTime> _noTickDates = [];
  List<DateTime> _attentionIcons = [];
  List<String> _dogs = ["", ""];
  List<String> _dogIds = ["", ""];
  List<String> _dogsSize = ["", ""];

  String _amount = "";
  double _amountDouble = 0.0;
  String _subscriptionType = "";
  int _numberOfDays = 7;
  int _numberOfWalk = 2;

  String _userName = "";
  String _userNameForInvoice = "";
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

  ScrollController scrollController = ScrollController();
  int _ratingNew = 5;

  String get cancelAmount => _cancelAmount;
  List<String> get dogs => _dogs;
  List<String> get dogIds => _dogIds;
  int get numberOfPets => _numberOfPets;
  List<DateTime> get noTickDates => _noTickDates;
  List<DateTime> get attentionIcons => _attentionIcons;
  int get serviceStatus => _serviceStatus;
  int get ratingNew => _ratingNew;
  int get bookingStatus => _bookingStatus;
  List<String> get dogsSize => _dogsSize;
  List<String> get detailsReplies => _detailsReplies;
  String get amount => _amount;
  double get amountDouble => _amountDouble;
  String get userName => _userName;
  String get userNameForInvoice => _userNameForInvoice;
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
  bool _showNaOne = false;

  bool _showLiveTwo = false;
  bool _showUpcomingTwo = false;
  bool _showReportTwo = false;
  bool _showNaTwo = false;

  bool get showLiveOne => _showLiveOne;
  bool get showUpcomingOne => _showUpcomingOne;
  bool get showReportOne => _showReportOne;
  bool get showNaOne => _showNaOne;

  bool get showLiveTwo => _showLiveTwo;
  bool get showUpcomingTwo => _showUpcomingTwo;
  bool get showReportTwo => _showReportTwo;
  bool get showNaTwo => _showNaTwo;

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

  bool _showDownloadInvoice = true;
  bool get showDownloadInvoice => _showDownloadInvoice;

  int _rating = 0;
  int get rating => _rating;

  void walkTwoStatus() {
    if (_walkStatusTwo == WalkStatus.showLive) {
      _showLiveTwo = true;
      _showUpcomingTwo = false;
      _showReportTwo = false;
      _showNaTwo = false;
    } else if (_walkStatusTwo == WalkStatus.showReport) {
      _showLiveTwo = false;
      _showUpcomingTwo = false;
      _showReportTwo = true;
      _showNaTwo = false;
    } else if (_walkStatusTwo == WalkStatus.showUpcoming) {
      _showLiveTwo = false;
      _showUpcomingTwo = true;
      _showReportTwo = false;
      _showNaTwo = false;
    } else if (_walkStatusTwo == WalkStatus.showNa) {
      _showLiveTwo = false;
      _showUpcomingTwo = false;
      _showReportTwo = false;
      _showNaTwo = true;
    }
    notifyListeners();
  }

  void walkOneStatus() {
    if (_walkStatusOne == WalkStatus.showLive) {
      _showLiveOne = true;
      _showUpcomingOne = false;
      _showReportOne = false;
      _showNaOne = false;
    } else if (_walkStatusOne == WalkStatus.showReport) {
      _showLiveOne = false;
      _showUpcomingOne = false;
      _showReportOne = true;
      _showNaOne = false;
    } else if (_walkStatusOne == WalkStatus.showUpcoming) {
      _showLiveOne = false;
      _showUpcomingOne = true;
      _showReportOne = false;
      _showNaOne = false;
    } else if (_walkStatusOne == WalkStatus.showNa) {
      _showLiveOne = false;
      _showUpcomingOne = false;
      _showReportOne = false;
      _showNaOne = true;
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

  void toLiveMapOne() async {
    await _navigationService.navigateTo(Routes.dRLiveMapView,
        arguments: DRLiveMapViewArguments(
          walkNumber: WalkNumber.One,
          serviceProviderId: serviceProviderId,
          userId: userId,
          appointmentId: appointmentId,
          selectedData: selectedDate,
        ));
    notifyListeners();
  }

  void toLiveMapTwo() async {
    await _navigationService.navigateTo(Routes.dRLiveMapView,
        arguments: DRLiveMapViewArguments(
          walkNumber: WalkNumber.Two,
          serviceProviderId: serviceProviderId,
          userId: userId,
          appointmentId: appointmentId,
          selectedData: selectedDate,
        ));
    notifyListeners();
  }

  void toReportCardOne() {
    _navigationService.navigateTo(Routes.dRReportCardView,
        arguments: DRReportCardViewArguments(
          noOfDogs: numberOfPets,
          dogs: dogs,
          date: selectedDate,
          walkNumber: WalkNumber.One,
          appointmentId: bookingId,
        ));
  }

  void toReportCardTwo() {
    _navigationService.navigateTo(Routes.dRReportCardView,
        arguments: DRReportCardViewArguments(
          noOfDogs: numberOfPets,
          dogs: dogs,
          date: selectedDate,
          walkNumber: WalkNumber.Two,
          appointmentId: bookingId,
        ));
  }

  void downloadInvoiceButton() async {
    //Dog Names
    String dogNames = "";
    if (dogs.length == 1) {
      dogNames = "${dogs[0]}";
    } else if (dogs.length == 2) {
      dogNames = "${dogs[0]}, ${dogs[1]}";
    }
    // Invoice Time
    DateTime now = DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String nowString = formatter.format(now);
    //Original Amount
    double original = 0.0;
    if (numberOfDays == 30 && numberOfWalk == 1) {
      original = 6499;
    } else if (numberOfDays == 30 && numberOfWalk == 2) {
      original = 12999;
    } else if (numberOfDays == 90 && numberOfWalk == 1) {
      original = 19497;
    } else if (numberOfDays == 90 && numberOfWalk == 2) {
      original = 38997;
    }
    if (dogs.length == 2) {
      original = original * 2;
    }
    //Discount Amount
    double discount = original - amountDouble;
    await InvoiceGenerator().generatePDF(
      invoiceNo: "$appointmentId",
      invoiceTo: "$userNameForInvoice",
      petName: "$dogNames",
      invoiceDate: "$nowString",
      packageName: "Dog Running - $subscriptionType",
      sessionsDetails: '($numberOfDays days & $numberOfWalk times / day)',
      billingType: 'Full Amount',
      startDate: startDateString,
      originalAmount: 'Rs. $original/-',
      discountAmount: 'Rs. $discount/-',
      totalAmount: 'Rs. $amount/-',
    );
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

  Future<void> scrollToCurrentDate() async {
    int dateCount = (initialDate).difference(startDate).inDays;
    if (scrollController.hasClients) {
      double jumpValue = 66 * (dateCount).toDouble();
      scrollController.animateTo(jumpValue,
          duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  // scroll implementation
  Future<void> getScrollStatus(DateTime date) async {
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
              if (date.day == now.day) {
                // upcoming
                _walkStatusOne = WalkStatus.showUpcoming;
              } else if (returnNow(date).isBefore(returnNow(now))) {
                // NA
                _walkStatusOne = WalkStatus.showNa;
              } else {
                // upcoming
                _walkStatusOne = WalkStatus.showUpcoming;
              }
            } else if (scroll[0].walkStatus == 1) {
              // Started
              if (returnNow(date).isBefore(returnNow(now))) {
                _walkStatusOne = WalkStatus.showNa;
              } else {
                _walkStatusOne = WalkStatus.showLive;
              }
            } else if (scroll[0].walkStatus == 2) {
              // Completed
              _walkStatusOne = WalkStatus.showReport;
            }
          }
          notifyListeners();
          if (numberOfWalk == 2) {
            if (scroll![0].walkStatus == 0) {
              if (date.day == now.day) {
                // upcoming
                _walkStatusOne = WalkStatus.showUpcoming;
              } else if (returnNow(date).isBefore(returnNow(now))) {
                // NA
                _walkStatusOne = WalkStatus.showNa;
              } else {
                // upcoming
                _walkStatusOne = WalkStatus.showUpcoming;
              }
            } else if (scroll[0].walkStatus == 1) {
              // Started
              if (returnNow(date).isBefore(returnNow(now))) {
                _walkStatusOne = WalkStatus.showNa;
              } else {
                _walkStatusOne = WalkStatus.showLive;
              }
            } else if (scroll[0].walkStatus == 2) {
              // Completed
              _walkStatusOne = WalkStatus.showReport;
            }

            if (scroll[1].walkStatus == 0) {
              if (date.day == now.day) {
                // upcoming
                _walkStatusTwo = WalkStatus.showUpcoming;
              } else if (returnNow(date).isBefore(returnNow(now))) {
                // NA
                _walkStatusTwo = WalkStatus.showNa;
              } else {
                // upcoming
                _walkStatusTwo = WalkStatus.showUpcoming;
              }
            } else if (scroll[1].walkStatus == 1) {
              // Started
              if (returnNow(date).isBefore(returnNow(now))) {
                _walkStatusTwo = WalkStatus.showNa;
              } else {
                _walkStatusTwo = WalkStatus.showLive;
              }
            } else if (scroll[1].walkStatus == 2) {
              // Completed
              _walkStatusTwo = WalkStatus.showReport;
            }
          }
          walkOneStatus();
          walkTwoStatus();
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

  void dateSelected(date) async {
    _selectedDate = date;
    await getScrollStatus(date);
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
          _amountDouble =
              result.data!.bookingDetails!.paymentDetails!.amount!.toDouble();

          double amountDouble = double.parse(amount);
          double cancelAmountInt = amountDouble / 2;

          _cancelAmount = cancelAmountInt.toString();

          _subscriptionType =
              result.data!.bookingDetails!.package!.subscriptionType!;
          _numberOfDays = result.data!.bookingDetails!.package!.numberOfDays!;
          _numberOfWalk = result.data!.bookingDetails!.package!.numberOfTimes!;
          notifyListeners();

          try {
            _userName = result.data!.partner!.fullName!;
          } catch (e) {
            _userName = "Dog Runner";
          }

          try {
            _userPicture = result.data!.partner!.avatar!;
          } catch (e) {
            _userPicture =
                "https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg";
          }

          _serviceProviderId = result.data!.partner!.userId!;

          _userId = result.data!.user!.userId!;

          try {
            _userNameForInvoice = result.data!.user!.fullName!;
          } catch (e) {
            _userNameForInvoice = result.data!.user!.username!;
          }

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
            List<runDetailsResponse>? daysRun =
                result.data!.bookingDetails!.runDetails;

            for (var one in days!) {
              _daysOff.add(DateTime.parse(one.off!));
            }

            for (var two in daysRun!) {
              // if(two.run2Status!=2 || two.run1Status!=2){
              //   _attentionIcons.add(DateTime.parse(two.runDate!));
              // }
              // if(two.run2Status!=2 && two.run1Status!=2)
              //   _noTickDates.add(DateTime.parse(two.runDate!));
              if (_numberOfWalk == 1 && two.run1Status != 2) {
                _attentionIcons.add(DateTime.parse(two.runDate!));
                _noTickDates.add(DateTime.parse(two.runDate!));
              } else if (_numberOfWalk == 2 &&
                  ((two.run2Status != 2 || two.run1Status != 2) &&
                      (two.run2Status != 1 || two.run1Status != 1))) {
                _attentionIcons.add(DateTime.parse(two.runDate!));
                _noTickDates.add(DateTime.parse(two.runDate!));
              }
            }
          } else if (_numberOfDays == 1) {
            for (int a = 1; a <= 6; a++) {
              DateTime newDate = _startDate.add(Duration(days: a));
              _daysOff.add(newDate);
            }
            _numberOfDays = 7;
          }

          await scrollToCurrentDate();
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

  Future callCS() async {
    try {
      launch("tel://9009004473");
    } catch (e) {
      snackBarService.showSnackbar(message: "Could not call 9009004473");
    }
  }

  @override
  Future<void> futureToRun() async {
    getAppointments();
    log.d("futureToRun");
  }

  returnNow(DateTime date) {
    final DateTime now = date;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    return DateTime.parse(formatted);
  }
}
