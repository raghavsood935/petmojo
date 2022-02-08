import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';

class DTOpeningViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('PaymentViewModel');
  final _navigationService = locator<NavigationService>();

  void toDogTrainingBooking() {
    _navigationService.navigateTo(Routes.dTDogTrainingBookingView);
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
