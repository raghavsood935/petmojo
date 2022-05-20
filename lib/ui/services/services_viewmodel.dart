import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';

class ServicesViewModel extends BaseModel {
  String _location = "T-129 Emerald Hills Gurugram...";
  int _noOfAppointments = 3;
  String _appointmentDate = "14 Oct 2021";
  String _appointmentType = "Pet boarding";
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool _ongoingSessionPresent = false;
  bool get isOngoingSessionPresent => _ongoingSessionPresent;

  String _ongoingSessionId = "";
  String get ongoingSessionId => _ongoingSessionId;

  int _ongoingSessionType = 0;
  int get ongoingSessionType => _ongoingSessionType;
  // 0: No session
  // 1: Dog training
  // 2: Dog Walking
  // 3: Dog Grooming

  List<ServicesModel> _listOfServices = [
    ServicesModel(
      title: "Dog Running",
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

  List<ServicesModel> _listOfUpcommingServices = [
    ServicesModel(
      title: "Pet Boarding",
      imgPath: petBoardingImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFEDFDD),
    ),
    ServicesModel(
      title: "Vet Consultation",
      imgPath: vetConsultationImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFEDFDD),
    ),
  ];

  Future init() async {
    print("Initialising services");
    await getSessionTracker();
  }

  Future getSessionTracker() async {
    var result = await _tamelyApi.sessionTracker();
    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (result.data != null) {
      _ongoingSessionPresent = result.data!.ongoing != 0;
      if (_ongoingSessionPresent && result.data!.ongoing != null) {
        _ongoingSessionType = result.data!.ongoing!;
      }
      if (_ongoingSessionPresent && result.data!.appointmentId != null) {
        _ongoingSessionId = result.data!.appointmentId!;
      }
      notifyListeners();
    }
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

  List<ServicesModel> get listOfUpcommingServices => _listOfUpcommingServices;

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
}

class ServicesModel {
  String? title;
  String? imgPath;
  bool? isHigDemand;
  Color? bgColor;

  ServicesModel({this.title, this.imgPath, this.isHigDemand, this.bgColor});
}
