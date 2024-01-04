import 'package:flutter/material.dart';
import 'package:folio/resources/theme/app_colors.dart';

import '../app_radius.dart';

class ThemeManager {
  //? Out Line Border -------------------------------------
  OutlineInputBorder get _outLineBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.fieldRadius),
      );

  //? None Input Border -------------------------------------
  InputDecorationTheme get noneInputBorder => const InputDecorationTheme(
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: ColorManager.white)),
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none);

  //? Input Decoration Theme -------------------------------------
  get _inputDecorationTheme => InputDecorationTheme(
        prefixIconColor: ColorManager.iconColor,
        suffixIconColor: ColorManager.iconColor,
        iconColor: ColorManager.iconColor,
        border: _outLineBorder,
        enabledBorder: _outLineBorder,
        focusedBorder: _outLineBorder,
        errorBorder: _outLineBorder.copyWith(
            borderSide: const BorderSide(color: ColorManager.errorColor)),
        fillColor: ColorManager.fieldColor.withOpacity(0.3),
        filled: true,
      );

  // * =====================================================================
  //? ============================= Light Theme ===========================
  // * =====================================================================
  // ThemeData lightTheme() => ThemeData(
  //       primaryColorLight: const Color(0xffC0392B),
  //       brightness: Brightness.light,
  //       primaryColor: const Color(0xffC0392B),
  //       highlightColor: Colors.black,
  //       canvasColor: Colors.white,
  //       fontFamily: 'Poppins',
  //       backgroundColor: Colors.white,
  //       splashColor: Colors.transparent,
  //       scaffoldBackgroundColor: Colors.white,
  //       colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
  //         secondary: Colors.black,
  //         brightness: Brightness.light,
  //       ),
  //     );

  // * =====================================================================
  //! ============================= Dark Theme ===========================
  // * =====================================================================
  ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: const Color(0xffC0392B),
        primaryColor: const Color(0xffC0392B),
        highlightColor: const Color(0xffC0392B),
        canvasColor: Colors.white,
        fontFamily: 'Poppins',
        inputDecorationTheme: _inputDecorationTheme,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: ColorManager.backgroundColor,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
          secondary: const Color(0xffC0392B),
          brightness: Brightness.dark,
        ),
      );
}
