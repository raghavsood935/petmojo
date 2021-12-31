import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/ui/tamelydogrunning/tamelydogrunning_view.dart';

class DogRunnersViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DogRunnersViewModel');
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  Future<void> init() async {
    print('init');
    await _listenForPermissionStatus();
  }

  String _companyAddress = "Gurugram, Haryana";
  int _noOfJobs = 24;
  double _noOfRating = 4.5;
  int _noOfRepeatClients = 24;

  String get companyAddress => _companyAddress;
  int get noOfJobs => _noOfJobs;
  double get noOfRating => _noOfRating;
  int get noOfRepeatClients => _noOfRepeatClients;

  LatLng currentLocation = const LatLng(28.445364671660784, 77.05960247665644);
  String _address = "Gurugram, Haryana";
  List<String> availableArea = [
    'Delhi',
    'Gurgaon',
    'New Delhi',
    'Faridabad',
    'Noida',
    'Ghaziabad',
    'Gurugram'
  ];
  String get address => _address;
  bool _companyAvailable = true;
  bool get companyAvailable => _companyAvailable;

  final Permission _permission = Permission.location;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  void navigateBack() {
    _navigationService.back();
  }

  Future<void> setLocation(LatLng location) async {
    if (location.latitude != 0)
      await getAddress(Coordinates(location.latitude, location.longitude))
          .then((value) {
        _address = value;
        notifyListeners();
      });
  }

  void toTamelyDogRunning() async {
    await _navigationService.navigateTo(Routes.tamelyDogRunnersView,
        arguments:
            TamelyDogRunnersViewArguments(currentLocation: currentLocation));
  }

  Future<String> getAddress(Coordinates coordinates) async {
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    print("this is subAdminArea ${address.first.subAdminArea}");
    print("this is locality ${address.first.locality}");
    if (availableArea.contains(address.first.subAdminArea) ||
        availableArea.contains(address.first.locality)) {
      _companyAvailable = true;
    } else {
      _companyAvailable = false;
    }
    notifyListeners();
    if (companyAvailable)
      print('Available');
    else
      print('Not Available');
    return '${address.first.adminArea}, ${address.first.countryName}';
  }

  void changeAddress() async {
    List result = await _navigationService.navigateTo(Routes.locationPicker);
    if (result[1]) {
      currentLocation = result[0];
      setLocation(result[0]);
    } else {
      _address = "Gurugram, Haryana";
      _companyAvailable = true;
    }
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }

  //openAppSettings();  For opening App Settings
  //    Geolocator.openLocationSettings(); forLocation setting

  Future<void> _listenForPermissionStatus() async {
    final status = await _permission.status;
    _permissionStatus = status;
    notifyListeners();
    _determinePosition();
  }

  Future<void> requestPermission(Permission permission) async {
    var sheetResponse = await _dialogService.showCustomDialog(
        variant: DialogType.LocationDialog);
    if (sheetResponse!.confirmed) {
      if (sheetResponse.data) {
        final status = await permission.request();
        _permissionStatus = status;
        notifyListeners();
      }
    }
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await requestPermission(_permission);
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await requestPermission(_permission);
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        requestPermission(_permission);
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position location = await Geolocator.getCurrentPosition();
    currentLocation = LatLng(location.latitude, location.longitude);
    _address = await getAddress(
        Coordinates(currentLocation.latitude, currentLocation.longitude));
    notifyListeners();
  }
}
