import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/api/base_response.dart';
import '../../../api/base_response.dart';
import '../../../api/server_error.dart';
import '../../../app/app.logger.dart';
import '../../../models/params/gps_tracking_wait_list_body.dart';
import '../../../services/user_service.dart';
import '../../../util/utils.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/models/send_data_response.dart';
import 'package:tamely/services/user_service.dart';
import 'package:tamely/util/utils.dart';

class GPSTrackerViewModel extends BaseViewModel {
  final log = getLogger('DogRunningBookingView');
  final userService = locator<UserService>();
  final snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  String productName = "GPS Pet Tracker for Dogs & Cats";
  String productPrice = "₹9600/-";
  String productAbout =
      "GPS Real time tracking, Easy to Use, Waterproof, Light weight, Cordless, Bluetooth, Wireless, Global connectivity.";

  List<String> seeMoreDetails = [
    "Track location country wide and  monitor activity",
    "LIVE mode - Get location updates every 5 seconds",
    "Get notified if your pet wanders far from your home",
    "Best technology experience",
    "100% waterproof device",
    "Up to 7 days battery life",
    "Choose a payment plan starting from Rs. 500 a month",
    "We updated our dog tracker with even better accuracy and battery life.",
    "Achieve peace of mind."
  ];

  // No of product
  int _chosenNo = 1;

  int get chosenNo => _chosenNo;

  void minusChosenNo() {
    if (_chosenNo > 1) {
      _chosenNo = _chosenNo - 1;
    }
    notifyListeners();
  }

  void addChosenNo() {
    if (_chosenNo < 5) {
      _chosenNo = _chosenNo + 1;
    }
    notifyListeners();
  }

  Future init() async {}

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  Future<void> saveGpsTrackingWaitList() async {
    try {
      if (await Util.checkInternetConnectivity()) {
        if (nameController.text != "" &&
            emailController.text != "" &&
            phoneController.text != "") {
          GpsTrackingWaitListBody gpsTrackingWaitListBody =
              GpsTrackingWaitListBody(
            nameController.text,
            emailController.text,
            phoneController.text,
            chosenNo,
          );
          BaseResponse<SendDataResponse> result = await runBusyFuture(
              _tamelyApi.gpsTrackingWaitList(gpsTrackingWaitListBody),
              throwException: true);
          snackBarService.showSnackbar(message: "Pre-Booking Done!");
        }
      } else {
        snackBarService.showSnackbar(message: "No Internet connection");
      }
    } on ServerError catch (e) {
      log.e(e.toString());
    }
  }
}
