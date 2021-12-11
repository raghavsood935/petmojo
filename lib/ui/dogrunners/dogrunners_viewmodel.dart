import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DogRunnersViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DogRunnersViewModel');
  final _navigationService = locator<NavigationService>();

  var currentLocation;
  Coordinates coordinates = Coordinates(0, 0);
  String address ='Gurugram, Haryana';
  bool isAvailable = false;
  List<String> availableArea=['Delhi'];

  DogRunnersViewModel(this.currentLocation);

  void navigateBack() {
    _navigationService.back();
  }

  Future<void> init() async {
    if(currentLocation.latitude!=0)
    await getAddress(Coordinates(currentLocation.latitude, currentLocation.longitude)).then((value) {address=value;notifyListeners();});
  }

  String _companyAddress = "Gurugram, Haryana";
  int _noOfJobs = 24;
  double _noOfRating = 4.5;
  int _noOfRepeatClients = 24;

  String get companyAddress => _companyAddress;
  int get noOfJobs => _noOfJobs;
  double get noOfRating => _noOfRating;
  int get noOfRepeatClients => _noOfRepeatClients;

  void toTamelyDogRunning() async {
    await _navigationService.navigateTo(Routes.tamelyDogRunnersView);
  }

  Future<String> getAddress(Coordinates coordinates) async {
    var address = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    availableArea.forEach((element) { if(element==address.first.adminArea){ isAvailable=true;}});
    if(isAvailable) print('Available'); else print('Not Available');
    return '${address.first.adminArea}, ${address.first.countryName}';
  }


  bool _companyAvailable = true;
  bool get companyAvailable => _companyAvailable;

  String _address = "Gurugram, Haryana";

  void changeAddress() async{
    _navigationService.navigateTo(Routes.locationPicker);
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
