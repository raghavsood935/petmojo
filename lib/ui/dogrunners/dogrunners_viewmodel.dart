import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/ui/tamelydogrunning/tamelydogrunning_view.dart';

class DogRunnersViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DogRunnersViewModel');
  final _navigationService = locator<NavigationService>();

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
}
