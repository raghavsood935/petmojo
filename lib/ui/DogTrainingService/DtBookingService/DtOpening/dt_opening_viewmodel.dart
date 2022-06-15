import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';

import '../../../../services/shared_preferences_service.dart';
import '../DtBooking/dt_dogtrainingbooking_view.dart';

class DTOpeningViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('PaymentViewModel');
  final _navigationService = locator<NavigationService>();
  final _sharedPreference = locator<SharedPreferencesService>();
  bool _tryNow = true;

  bool get tryNow => _tryNow;

  void toDogTrainingBooking(BuildContext context) {
    _sharedPreference.setTryNowTraining(false);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => DTDogTrainingBookingView(),
      ),
    );
  }

  void init() {
    _tryNow = _sharedPreference.tryNowTraining;
    notifyListeners();
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
