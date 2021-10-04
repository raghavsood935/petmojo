import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(
        accentColor: Colors.white,
        primaryColor: colors.primary,
        fontFamily: 'lato',
        textTheme: TextTheme(
          overline: TextStyle(fontFamily: 'lato', letterSpacing: 0),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              borderSide: BorderSide(color: const Color(0xfffbb4b8))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.kcPrimaryTextColor)),
          labelStyle: TextStyle(
            fontFamily: 'lato',
            fontSize: 14,
            color: const Color(0xffdcdcdc),
          ),
        ),
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.accent,
          disabledColor: const Color(0xfffbd7da),
          buttonColor: colors.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Color(0xfffbd7da);
                  }
                  if (states.contains(MaterialState.disabled)) {
                    return const Color(0xfffbd7da);
                  }
                  return colors.primary;
                }),
                foregroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.white))),
        tabBarTheme: TabBarTheme(
          indicator: UnderlineTabIndicator(
              borderSide: const BorderSide(width: 2.0, color: colors.primary)),
          labelColor: const Color(0xffec3a45),
          unselectedLabelColor: const Color(0x403e3e3e),
        )),
    ThemeData(backgroundColor: Colors.white, accentColor: Colors.green),
    ThemeData(backgroundColor: Colors.purple, accentColor: Colors.green),
    ThemeData(backgroundColor: Colors.black, accentColor: Colors.red),
    ThemeData(backgroundColor: Colors.red, accentColor: Colors.blue),
  ];
}
