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

  static bool isValidPhone(String? s) {
    if (s == null) {
      return false;
    }
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (s.length == 0) {
      return false;
    } else if (!regExp.hasMatch(s)) {
      return false;
    }
    return true;
  }
}
