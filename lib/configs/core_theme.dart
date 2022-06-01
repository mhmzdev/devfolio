import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: kPrimaryColor,
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: kPrimaryColor,
  primaryColor: kPrimaryColor,
  highlightColor: kPrimaryColor,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  backgroundColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    secondary: kPrimaryColor,
    brightness: Brightness.dark,
  ),
);
