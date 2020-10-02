import 'package:flutter/material.dart';
import '../helpers/custom_route.dart';
import 'package:flutter/services.dart';

class Constants {
  static String appName = "Spotify Clone";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey[900];
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xfffcfcff);
  static Color lightBG1 = Colors.grey[100];
  static Color darkBG = Colors.black;
  static Color darkBG1 = Colors.grey[900];
  static Color spotify = Colors.green;
  static Color badgeColor = Colors.red;

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    shadowColor: darkBG1,
    hintColor: spotify,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CustomPageTransitionBuilder(),
        TargetPlatform.iOS: CustomPageTransitionBuilder(),
      },
    ),
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
      elevation: 0,
    ),
  );
}
