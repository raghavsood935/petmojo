import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.router.dart';

class TamelyRateChartViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('TamelyRateChartViewModel');
  final _navigationService = locator<NavigationService>();

  LatLng currentLocation;
  TamelyRateChartViewModel(this.currentLocation);

  void navigateBack() {
    _navigationService.back();
  }

  toBookRunning() {
    _navigationService.navigateTo(
      Routes.dogRunningBookingView,
    );
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
