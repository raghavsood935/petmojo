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
import 'package:tamely/models/get_grooming_appointment_details_response.dart';
import 'package:tamely/models/get_scroll_status_response.dart';
import 'package:tamely/models/get_training_appointment_details_response.dart';
import 'package:tamely/models/get_training_scroll_status_response.dart';
import 'package:tamely/models/my_appointments_response.dart';
import 'package:tamely/models/params/change_appointment_status_body.dart';
import 'package:tamely/models/params/change_runone_status_body.dart';
import 'package:tamely/models/params/change_runtwo_status_body.dart';
import 'package:tamely/models/params/get_appointment_details_body.dart';
import 'package:tamely/models/params/get_scroll_status_body.dart';
import 'package:tamely/models/params/get_training_scroll_status_body.dart';
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

class DGAppointmentDetailsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('AppointmentDetailsViewModel');
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();

  final String bookingId;
  DGAppointmentDetailsViewModel(this.bookingId);

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

  String _amount = "";
  String _subscriptionType = "Puppy Training";
  int _numberOfSessions = 16;
  int get numberOfSessions => _numberOfSessions;

  int _currentSession = 1;
  int get currentSession => _currentSession;

  void onSessionNumberTapped(int session) {
    _currentSession = session;
    print(currentSession);
    getScrollStatus(currentSession);
    notifyListeners();
  }

  void toReport() {
    _navigationService.navigateTo(
      Routes.dTReportCardView,
      arguments: DTReportCardViewArguments(
        appointmentId: bookingId,
        sessionNo: currentSession,
      ),
    );
  }
  // Service name
  String _description = "Bath and brush";
  String get description => _description;
  
  // Tagline of service
  String _subtitle = "For general hygiene and a healthy looking coat";
  String get subtitle => _subtitle;

  // Slot time
  String _weekDayTiming = "08AM - 10AM";
  String get weekDayTiming => _weekDayTiming;

  // text controller inputlineone
  TextEditingController _addressLineOneController = TextEditingController();
  TextEditingController get addressLineOneController =>
      _addressLineOneController;
  
  // text controller inputlinetwo
  TextEditingController _addressLineTwoController = TextEditingController();
  TextEditingController get addressLineTwoController =>
      _addressLineTwoController;



  List<String> _dogs = ["", ""];
  List<String> _dogIds = ["", ""];

  String _userName = "";
  String _userPicture = "https://wallpaperaccess.com/full/2213424.jpg";

  String _walkOneTime = "";

  String _startDateString = "";

  String _address = "";

  DateTime _startDate = DateTime.now();

  String _cancelAmount = "";

  String get cancelAmount => _cancelAmount;

  List<String> get dogs => _dogs;
  List<String> get dogIds => _dogIds;
  int get numberOfPets => _numberOfPets;
  int get serviceStatus => _serviceStatus;
  int get bookingStatus => _bookingStatus;
  String get amount => _amount;
  String get userName => _userName;
  String get userPicture => _userPicture;
  String get subscriptionType => _subscriptionType;
  String get startDateString => _startDateString;
  String get address => _address;
  DateTime get startDate => _startDate;
  String get walkOneTime => _walkOneTime;

  // Status
  bool _showLiveOne = false;
  bool _showUpcomingOne = false;
  bool _showReportOne = false;

  bool get showLiveOne => _showLiveOne;
  bool get showUpcomingOne => _showUpcomingOne;
  bool get showReportOne => _showReportOne;

  WalkStatus _walkStatusOne = WalkStatus.showUpcoming;
  WalkStatus get walkStatusOne => _walkStatusOne;

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
            _tamelyApi.changeTrainingAppointmentStatus(registerBody),
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
    notifyListeners();
  }

  // scroll implementation
  void getScrollStatus(int session) async {
    try {
      if (await Util.checkInternetConnectivity()) {
        GetTrainingScrollStatusBody getTrainingScrollStatusBody =
            GetTrainingScrollStatusBody(bookingId, session);
        BaseResponse<GetTrainingScrollStatusResponse> result =
            await runBusyFuture(
                _tamelyApi.getTrainingScrollStatus(getTrainingScrollStatusBody),
                throwException: true);
        if (result.data != null) {
          int? scroll = result.data!.trainingStatus;
          print(scroll);
          if (scroll == 0) {
            // upcoming
            _walkStatusOne = WalkStatus.showUpcoming;
          } else if (scroll == 2) {
            // Completed
            _walkStatusOne = WalkStatus.showReport;
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
    _navigationService.navigateTo(Routes.dTDogTrainingBookingView);
  }

  //
  void sessionSelected(session) {
    print(session);
    // getScrollStatus(session);
    notifyListeners();
  }

  void getAppointments() async {
    print("4");
    try {
      if (await Util.checkInternetConnectivity()) {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        GetAppointmentDetailsBody registerBody =
            GetAppointmentDetailsBody(bookingId);
        BaseResponse<GetGroomingAppointmentDetailsResponse> result =
            await runBusyFuture(
                _tamelyApi.getGroomingAppointmentDetails(registerBody),
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

          _weekDayTiming = result.data!.bookingDetails!.sessionDetails!.sessionTime ?? "08AM - 10AM";
          _description = result.data!.bookingDetails!.package!.subscriptionType ?? "Bath and brush";
          if(_description.contains("brush")){
            _subtitle = "For general hygiene and a healthy looking coat.";
          }
          else if(_description.contains("Styling")){
            _subtitle = "For full haircut and complete styling";
          }
          else{
            _subtitle = "Complete hygiene and styling";
          }
          _addressLineOneController.text = result.data!.bookingDetails!.petRunningLocation!.addressLine1!;
          _addressLineTwoController.text = result.data!.bookingDetails!.petRunningLocation!.addressLine2!;
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

          String oneAddress =
              result.data!.bookingDetails!.petRunningLocation!.addressLine1!;

          String twoAddress =
              result.data!.bookingDetails!.petRunningLocation!.addressLine2!;

          _address = "$oneAddress , $twoAddress";

          _amount = result.data!.bookingDetails!.package!.amount!.toString();

          double amountDouble = double.parse(amount);
          double cancelAmountInt = amountDouble / 2;

          _cancelAmount = cancelAmountInt.toString();

          _subscriptionType =
              result.data!.bookingDetails!.package!.subscriptionType!;
          // _numberOfSessions =
              // result.data!.bookingDetails!.package!.numberOfSessions!;
              _numberOfSessions = 1;
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

          _userId = result.data!.userId!;
          _serviceProviderId = result.data!.partner!.userId!;

          //_walkOneTime = result.data!.bookingDetails!.run1Time!;

          _walkOneTime = "";

          notifyListeners();

          var formatter = new DateFormat('dd-MM-yyyy');

          _startDateString = result.data!.bookingDetails!.startDate!;
          _startDate = DateTime.parse(startDateString);
          _startDateString = formatter.format(_startDate);
          notifyListeners();

          sessionSelected(1);

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
}
