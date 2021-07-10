import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class ThemeStyles {
  static ThemeData themeData(bool lightTheme, BuildContext buildContext) {
    return lightTheme
        ?
        // Light Theme
        ThemeData(
            primarySwatch: Colors.red,
            primaryColorLight: kPrimaryColor,
            brightness: Brightness.light,
            primaryColor: kPrimaryColor,
            accentColor: Colors.black,
            highlightColor: Colors.black,
            canvasColor: Colors.white,
          )
        // Dark Theme
        : ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.red,
            primaryColorDark: kPrimaryColor,
            primaryColor: kPrimaryColor,
            accentColor: kPrimaryColor,
            highlightColor: kPrimaryColor,
            canvasColor: Colors.white,
          );
  }
}
