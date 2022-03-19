import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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

  List<ServicesModel> _listOfServices = [
    ServicesModel(
      title: "Dog Running",
      imgPath: dogWalkingImgPath,
      isHigDemand: true,
      bgColor: Color(0xFFFEF8E8),
    ),
    ServicesModel(
      title: "Dog Training",
      imgPath: dogTranningImgPath,
      isHigDemand: true,
      bgColor: Color(0xFFFDF2EE),
    ),
  ];

  List<ServicesModel> _listOfUpcommingServices = [
    ServicesModel(
      title: "Pet Boarding",
      imgPath: petBoardingImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFFEFE7),
    ),
    ServicesModel(
      title: "Grooming",
      imgPath: grommingImgPath,
      isHigDemand: false,
      bgColor: Color(0xFFFFF5E4),
    ),
  ];

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
  }
}

class ServicesModel {
  String? title;
  String? imgPath;
  bool? isHigDemand;
  Color? bgColor;

  ServicesModel({this.title, this.imgPath, this.isHigDemand, this.bgColor});
}
