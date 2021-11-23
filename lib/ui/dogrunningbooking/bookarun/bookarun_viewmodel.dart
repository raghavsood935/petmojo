import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

import '../dogrunningbooking_viewmodel.dart';

class BookARunViewModel extends DogRunningBookingViewModel {
  final log = getLogger('BookARunViewModel');
  final _navigationService = locator<NavigationService>();

  BookARunViewModel();

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
