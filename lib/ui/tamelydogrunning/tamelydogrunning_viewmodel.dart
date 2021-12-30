import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class TamelyDogRunnersViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('TamelyDogRunnersViewModel');
  final _navigationService = locator<NavigationService>();

  LatLng currentLocation;
  TamelyDogRunnersViewModel(this.currentLocation);

  void navigateBack() {
    _navigationService.back();
  }

  int _noOfJobs = 24;
  double _noOfRating = 4.5;
  int _noOfRepeatClients = 24;

  int get noOfJobs => _noOfJobs;
  double get noOfRating => _noOfRating;
  int get noOfRepeatClients => _noOfRepeatClients;

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
