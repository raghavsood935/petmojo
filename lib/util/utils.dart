import 'package:connectivity_plus/connectivity_plus.dart';

class Util {
  bool isOpen = false;

  static Future<bool> checkInternetConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi ||
        result == ConnectivityResult.ethernet) {
      return true;
    } else {
      return false;
    }
  }

  static bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
