import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';

class DROpeningViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('PaymentViewModel');
  final _navigationService = locator<NavigationService>();

  void toDogRunningBooking() {
    _navigationService.navigateTo(Routes.dRDogRunningBookingView);
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
