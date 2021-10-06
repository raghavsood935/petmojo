extension StringExtension on String? {
  String capitalize() {
    if (this == null) {
      return "";
    } else if (this!.isEmpty) {
      return "";
    } else {
      return "${this![0].toUpperCase()}${this!.substring(1)}";
    }
  }

  bool isValid() {
    if (this == null) {
      return false;
    } else if (this!.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  double getNumeric() {
    if (this == null) {
      return 0.0;
    } else if (this!.isEmpty) {
      return 0.0;
    } else {
      return double.parse(this!);
    }
  }
}
