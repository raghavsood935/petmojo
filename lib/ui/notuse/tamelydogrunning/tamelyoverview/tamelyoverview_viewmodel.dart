import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.router.dart';

class TamelyOverviewViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('TamelyOverviewViewModel');

  final _navigationService = locator<NavigationService>();

  LatLng currentLocation;
  TamelyOverviewViewModel(this.currentLocation);

  String _topReviewerName = "Namita Sakore";
  String _topReview =
      "I am able to relax knowing that Bella is in very good hands; she enjoyed her walks with you--- she told me so! I can work guilt free now!";
  int _starts = 5;
  String get topReviewerName => _topReviewerName;
  String get topReview => _topReview;
  int get starts => _starts;

  toBookRunning() {
    _navigationService.navigateTo(
      Routes.dRDogRunningBookingView,
    );
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
