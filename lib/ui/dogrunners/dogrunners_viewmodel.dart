import 'package:flutter/services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DogRunnersViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DogRunnersViewModel');
  final _navigationService = locator<NavigationService>();

  void navigateBack() {
    _navigationService.back();
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

  bool _companyAvailable = true;
  bool get companyAvailable => _companyAvailable;

  String _address = "Gurugram, Haryana";
  String get address => _address;

  void changeAddress() {
    // Google maps
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
