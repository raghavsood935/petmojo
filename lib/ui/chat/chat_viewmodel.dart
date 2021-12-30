import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';

class ChatViewModel extends FutureViewModel<void> implements Initialisable {
  final log = getLogger('ChatViewModel');
  final _navigationService = locator<NavigationService>();

  void navigateBack() {
    _navigationService.back();
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
