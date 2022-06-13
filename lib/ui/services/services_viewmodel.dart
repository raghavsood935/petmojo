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
import '../../models/session_tracker_response.dart';
import '../../util/utils.dart';

class ServicesViewModel extends FutureViewModel {
  final log = getLogger('ServicesViewModel');
  String _location = "T-129 Emerald Hills Gurugram...";
  int _noOfAppointments = 3;
  String _appointmentDate = "14 Oct 2021";
  String _appointmentType = "Pet boarding";
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool _ongoingSessionPresent = false;
  bool get ongoingSessionPresent => _ongoingSessionPresent;

  String _ongoingSessionId = "";
  String get ongoingSessionId => _ongoingSessionId;

  int _ongoingSessionType = 0;
  int get ongoingSessionType => _ongoingSessionType;
  // 1: Dog training
  // 2: Dog Walking
  // 3: Dog Grooming

  List<ServicesModel> _listOfServices = [
    ServicesModel(
      title: "Walking/Exercise",
      imgPath: "assets/images/dog_walking.png",
      isHigDemand: true,
      bgColor: Color(0xFFFEDFDD),
    ),
    ServicesModel(
      title: "Dog Training",
      imgPath: dogTranningImgPath,
      isHigDemand: true,
      bgColor: Color(0xFFFEDFDD),
    ),
    ServicesModel(
      title: "Pet Grooming",
      imgPath: grommingImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFEDFDD),
    ),
  ];

  List<UpcomingServicesModel> _listOfUpcommingServices = [
    UpcomingServicesModel(
      title: "Pet Boarding",
      imgPath: petBoardingImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFFFFFF),
    ),
    UpcomingServicesModel(
      title: "Vet Consultation",
      imgPath: vetConsultationImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFFFFFF),
    ),
  ];

  Future init() async {
    print("Initialising services");
    getSessionTracker();
  }

  void getSessionTracker() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<SessionTrackerResponse> result = await runBusyFuture(
            _tamelyApi.sessionTracker(),
            throwException: true);
        _ongoingSessionPresent = result.data!.success!;
        if (ongoingSessionPresent) {
          _ongoingSessionType = result.data!.ongoing!;
          _ongoingSessionId = result.data!.appointmentId!;
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

  void onLiveSnippetCTA() async {
    if (ongoingSessionType == 1) {
      await _navigationService.navigateTo(
        Routes.dTAppointmentDetailsView,
        arguments:
            DTAppointmentDetailsViewArguments(appointmentId: ongoingSessionId),
      );
    } else if (ongoingSessionType == 2) {
      await _navigationService.navigateTo(
        Routes.dRAppointmentDetailsView,
        arguments:
            DRAppointmentDetailsViewArguments(appointmentId: ongoingSessionId),
      );
    } else if (ongoingSessionType == 3) {
      await _navigationService.navigateTo(
        Routes.dGAppointmentDetailsView,
        arguments:
            DGAppointmentDetailsViewArguments(appointmentId: ongoingSessionId),
      );
    }
  }

  Future onServiceTap(int index) async {
    switch (index) {
      case 0:
        {
          _navigationService.navigateTo(
            Routes.dROpening,
          );
          break;
        }
      case 1:
        {
          _navigationService.navigateTo(
            Routes.dTOpening,
          );
          break;
        }
      case 2:
        {
          _navigationService.navigateTo(
            Routes.dummyDevelopmentScreen,
            arguments: DummyDevelopmentScreenArguments(
              title: petBoardingTitle,
            ),
          );
          break;
        }
      case 3:
        {
          _navigationService.navigateTo(
            Routes.dGDogGroomingBookingView,
          );
          break;
        }
    }
  }

  Future onSlideServiceTap(int index) async {
    switch (index) {
      case 0:
        {
          _navigationService.navigateTo(
            Routes.dRDogRunningBookingView,
          );
          break;
        }
      case 1:
        {
          _navigationService.navigateTo(
            Routes.dTDogTrainingBookingView,
          );
          break;
        }
      case 2:
        {
          _navigationService.navigateTo(
            Routes.dummyDevelopmentScreen,
            arguments: DummyDevelopmentScreenArguments(
              title: petBoardingTitle,
            ),
          );
          break;
        }
      case 3:
        {
          _navigationService.navigateTo(
            Routes.dGDogGroomingBookingView,
          );
          break;
        }
    }
  }

  String get location => this._location;

  int get noOfAppointments => this._noOfAppointments;

  List<ServicesModel> get listOfServices => _listOfServices;

  List<UpcomingServicesModel> get listOfUpcommingServices =>
      _listOfUpcommingServices;

  get appointmentDate => this._appointmentDate;

  get appointmentType => this._appointmentType;

  void toMyBookings() {
    _navigationService.navigateTo(Routes.appointmentsView);
  }

  void goToECommercePage() {
    // _navigationService.navigateTo(Routes.eCommerceMainView);
    // _navigationService.navigateTo(Routes.gPSTrackerPageView);
  }

  void goToVideosPage() {
    _navigationService.navigateTo(Routes.videosSectionView);
  }

  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }
}

class ServicesModel {
  String? title;
  String? imgPath;
  bool? isHigDemand;
  Color? bgColor;

  ServicesModel({this.title, this.imgPath, this.isHigDemand, this.bgColor});
}

class UpcomingServicesModel {
  String? title;
  String? imgPath;
  bool? isHigDemand;
  Color? bgColor;

  UpcomingServicesModel(
      {this.title, this.imgPath, this.isHigDemand, this.bgColor});
}
