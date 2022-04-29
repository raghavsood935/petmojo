import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/get_payment_details_response.dart';
import 'package:tamely/models/params/get_payment_details_body.dart';
import 'package:tamely/models/params/set_payment_details_body.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/util/utils.dart';

class DRPaymentViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('PaymentViewModel');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final snackBarService = locator<SnackbarService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();

  int amount = 0;
  String bookingId = "";

  DRPaymentViewModel(this.amount, this.bookingId);

  // display page
  bool _startPayment = false;
  bool get startPayment => _startPayment;

  // if completed - done
  bool _paymentCompleted = false;
  bool get paymentCompleted => _paymentCompleted;

  // if payment failed - enable go back / try again
  bool _paymentFailed = false;
  bool get paymentFailed => _paymentFailed;

  //

  void setPaymentStatus(bool value) {
    _startPayment = value;
    notifyListeners();
  }

  GetPaymentDetailsResponse getPaymentDetailsResponse =
      GetPaymentDetailsResponse();

  void getPaymentDetails() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        GetPaymentDetailsBody getPaymentDetailsBody =
            GetPaymentDetailsBody(amount.toString(), bookingId);
        BaseResponse<GetPaymentDetailsResponse> result = await runBusyFuture(
            _tamelyApi.getPaymentDetails(getPaymentDetailsBody),
            throwException: true);
        if (result.data != null) {
          getPaymentDetailsResponse = result.data!;
        }
        _startPayment = true;
        notifyListeners();
        openCheckout();
        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  void setPaymentDetails() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        SetPaymentDetailsBody setPaymentDetailsBody = SetPaymentDetailsBody(
            bookingId,
            getPaymentDetailsResponse.orderId!,
            getPaymentDetailsResponse.amount!);
        BaseResponse<SendDataResponse> result = await runBusyFuture(
            _tamelyApi.setPaymentDetails(setPaymentDetailsBody),
            throwException: true);

        notifyListeners();
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
    notifyListeners();
  }

  late Razorpay _razorpay;

  startState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  endState() {
    _razorpay.clear();
  }

  bool isHuman = true;
  String petID = "";
  String petToken = "";
  int currentIndex = 0;

  Future init() async {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petToken = profile.petToken;
    petID = profile.petId;
    currentIndex = profile.currentIndex;
    notifyListeners();
  }

  void toMyBookings() async {
    _navigationService.back();
    _navigationService.back();
    _navigationService.back();
    _navigationService.back();
    _navigationService.navigateTo(Routes.appointmentsView);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_live_ztSkXyNvulc0CE',
      'amount': getPaymentDetailsResponse.amount,
      'name': '',
      'order_id': getPaymentDetailsResponse.orderId,
      'description': 'Petmojo Dog Running',
      'retry': {
        'enabled': true,
        'max_count': 2,
      },
      'send_sms_hash': true,
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("I print: Success");
    _paymentCompleted = true;
    _paymentFailed = false;
    notifyListeners();
    setPaymentDetails();
    notifyListeners();
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("I print: Failure");
    _paymentCompleted = false;
    _paymentFailed = true;
    notifyListeners();
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("I print: Wallet");
    // Do something when an external wallet was selected
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}
