import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class GPSTrackerViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  String productName = "GPS Pet Tracker for Dogs & Cats";
  String productPrice = "₹9600/-";
  String productAbout =
      "GPS Real time tracking, Easy to Use, Waterproof, Light weight, Cordless, Bluetooth, Wireless, Global connectivity";

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

  Future init() async {
    // await showJoinWaitlistDialog();
  }

  Future showJoinWaitlistDialog() async {
    var result = await _dialogService.showCustomDialog(
      variant: DialogType.GPSWaitlistDialog,
      barrierDismissible: false,
      takesInput: true,
    );
  }
}
