import 'package:flutter/material.dart';

import 'String.dart';

class colors {
  colors._();

  static const MaterialColor primary_app = const MaterialColor(
    0xffFE7E7B,
    const <int, Color>{
      50: primary,
      100: primary,
      200: primary,
      300: primary,
      400: primary,
      500: primary,
      600: primary,
      700: primary,
      800: primary,
      900: primary,
    },
  );

  static const Color kcPrimaryTextColor = Color(0xff3F414E);
  static const Color kcMediumGreyColor = Color(0xff868686);
  static const Color kcLightGreyColor = Color(0xffAEAEAE);
  static const Color kcVeryLightGreyColor = Color(0xfff2f2f2);
  static const Color kcGreyBackground = Color(0xffe5e5e5);
  static const Color kcLightGreyBackground = Color(0xffEEF2F9);

  static const Color primary = Color(0xffF696B1);
  static const Color secondary = Color(0xffFDCD96);
  static const Color backgroundColor = Color(0xffFAFAFA);
  static const Color lightBackgroundColor = Color(0xFFFEF4F7);

  static Color get fontColor =>
      ISDARK == "true" ? secondary : const Color(0xff4543C1);
  static const Color grad1Color = Color(0xffFFBD69);
  static const Color grad2Color = Color(0xffFF6363);
  static const Color lightWhite2 = Color(0xffEEF2F3);

  static const Color fbBlue = Color(0xff415E9B);

  static const Color pink = Color(0xffd4001d);
  static const Color red = Colors.red;

  static Color get lightBlack =>
      ISDARK == "true" ? whiteTemp : const Color(0xff52575C);

  static Color get lightBlack2 =>
      ISDARK == "true" ? white70 : const Color(0xff999999);

  static Color get lightWhite =>
      ISDARK == "true" ? darkColor : const Color(0xffEEF2F9);

  static const Color darkColor = Color(0xff202844);
  static const Color darkColor2 = Color(0xff273152);

  static Color get white =>
      ISDARK == "true" ? darkColor2 : const Color(0xffFFFFFF);
  static const Color whiteTemp = Color(0xffFFFFFF);

  static Color get black =>
      ISDARK == "true" ? whiteTemp : const Color(0xff000000);

  static const Color white10 = Colors.white10;
  static const Color white30 = Colors.white30;
  static const Color white70 = Colors.white70;

  static Color green10 = Colors.green.shade100;
  static Color green30 = Colors.green.shade300;
  static Color green70 = Colors.green.shade700;

  static const Color black54 = Colors.black54;
  static const Color black12 = Colors.black12;
  static const Color disableColor = Color(0xffEEF2F9);
  static Color get black26 => ISDARK == "true" ? white30 : Colors.black26;
}
