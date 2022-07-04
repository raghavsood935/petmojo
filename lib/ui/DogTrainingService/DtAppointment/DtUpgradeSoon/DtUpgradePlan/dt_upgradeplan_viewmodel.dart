import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import '../../../../../api/api_service.dart';
import '../../../../../api/base_response.dart';
import '../../../../../api/server_error.dart';
import '../../../../../app/app.router.dart';
import '../../../../../enum/dog_training_package.dart';
import '../../../../../models/book_a_run_response.dart';
import '../../../../../models/params/upgrade_dog_training_body.dart';
import '../../../../../services/user_service.dart';
import '../../../../../util/utils.dart';

class DTUpgradePlanViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('DTUpgradePlanViewModel');
  final _navigationService = locator<NavigationService>();
  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  void navigateBack() {
    _navigationService.back();
  }

  DTUpgradePlanViewModel(
    this.appointmentId,
    this.selectedPackage,
    this.frequency,
    this.description,
    this.address1,
    this.address2,
    this.dogs,
    this.partnerName,
    this.amount,
    this.discount,
    this.previousAmount,
    this.newTotalAmount,
  );

  // Get variables

  final String appointmentId;
  final DogTrainingPackage selectedPackage;
  final int frequency;

  // -- Top box
  final String description;

  final String address1;
  final String address2;

  DateTime currentDate = DateTime.now();

  // -- Booking Details

  final List<String> dogs;

  final String partnerName;

  // -- Payment Details

  final double amount;

  final double discount;

  final double previousAmount;

  final double newTotalAmount;

  void toDogProfileOne() {}

  void toPartnerProfile() {}

  void toMyInvoice() {}

  Future<void> onPayNowPressed() async {
    //

    PackageTrainingBody packageBody = PackageTrainingBody(
        description, newTotalAmount.toInt().toString(), frequency);

    UpgradeDogTrainingBody upgradeDogTrainingBody =
        UpgradeDogTrainingBody(appointmentId, packageBody);

    try {
      if (await Util.checkInternetConnectivity()) {
        BaseResponse<BookARunResponse> result = await runBusyFuture(
            _tamelyApi.upgradeDogTraining(upgradeDogTrainingBody),
            throwException: true);
        notifyListeners();

        if (result.data != null) {
          String newBookingId = result.data!.bookingId!;
          _navigationService.replaceWith(
            Routes.dTUpgradePaymentView,
            arguments: DTUpgradePaymentViewArguments(
                amount: newTotalAmount.toInt(), bookingId: newBookingId),
          );
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
