import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

  static Widget getImageChild(String imagePath, double? width, double? height) {
    Widget imageWidget = Container();

    if (imagePath.startsWith("http")) {
      imageWidget = CachedNetworkImage(
        imageUrl: imagePath,
        placeholder: (context, url) => new CircularProgressIndicator(),
        errorWidget: (context, url, error) => new Icon(Icons.error),
      );
    } else if (imagePath.contains("storage")) {
      imageWidget = Image.file(
        File(imagePath),
        fit: BoxFit.contain,
      );
    } else if (imagePath.endsWith(".svg")) {
      imageWidget = SvgPicture.asset(
        imagePath,
        fit: BoxFit.contain,
      );
    } else if (imagePath.endsWith(".png")) {
      imageWidget = Image.asset(
        imagePath,
        fit: BoxFit.contain,
      );
    }

    if (width != null && height != null) {
      return Container(
        height: height,
        width: width,
        child: imageWidget,
      );
    } else {
      return imageWidget;
    }
  }
}
