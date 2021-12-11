import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/services_model.dart';
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

  List<ServicesModel> _listOfServices = [
    ServicesModel(dogwalkingTitle, dailyDogRunning,
        isHigDemand: true,
        descripitons: [
          "Daily 30 min sessions.",
          "Live GPS Tracking.",
          "Live photo of run/walk sharing",
          "Trusted and Passionate dog Walker"
        ]),
    ServicesModel(houseSittingTitle, houseSitting,
        description:
            "Reliable and loving pet sitter that visits your pet ar home. Track and receive video/photo updates."),
    ServicesModel(petBoardingTitle, petBoarding,
        description:
            "Verified, experienced and trusted boarders that take care of yours pets while you are away. Track and receive video updates"),
    ServicesModel(petGroomingTitle, petGrooming,
        description:
            "Choose our professional and caring pet groomers that make your pet look like a million dollars!"),
  ];

  Future onServiceTap(int index) async {
    switch (index) {
      case 0:
        {
          _navigationService.navigateTo(Routes.dogRunnersView,
          arguments: DogRunnersArguments(currentLocation: LatLng(0,0))
          );
          break;
        }
      case 1:
        {
          _navigationService.navigateTo(
            Routes.dummyDevelopmentScreen,
            arguments: DummyDevelopmentScreenArguments(
              title: houseSittingTitle,
            ),
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
            Routes.dummyDevelopmentScreen,
            arguments: DummyDevelopmentScreenArguments(
              title: petGroomingTitle,
            ),
          );
          break;
        }
    }
  }

  String get location => this._location;

  int get noOfAppointments => this._noOfAppointments;

  List<ServicesModel> get listOfServices => _listOfServices;

  get appointmentDate => this._appointmentDate;

  get appointmentType => this._appointmentType;

  void toMyBookings() {
    _navigationService.navigateTo(Routes.appointmentsView);
  }

  void toDogWalking() {
    _navigationService.navigateTo(Routes.dogRunnersView,
        arguments: DogRunnersArguments(currentLocation: LatLng(0,0))
    );
  }
}
