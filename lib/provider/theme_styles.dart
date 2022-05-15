import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class ThemeStyles {
  static ThemeData themeData(bool lightTheme, BuildContext buildContext) {
    return lightTheme
        ?
        // Light Theme
        ThemeData(
            primaryColorLight: kPrimaryColor,
            brightness: Brightness.light,
            primaryColor: kPrimaryColor,
            highlightColor: Colors.black,
            canvasColor: Colors.white,
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
              secondary: Colors.black,
              brightness: Brightness.light,
            ),
          )
        // Dark Theme
        : ThemeData(
            brightness: Brightness.dark,
            primaryColorDark: kPrimaryColor,
            primaryColor: kPrimaryColor,
            highlightColor: kPrimaryColor,
            canvasColor: Colors.white,
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
              secondary: kPrimaryColor,
              brightness: Brightness.dark,
            ),
          );
  }
}
