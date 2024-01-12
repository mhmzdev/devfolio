import 'package:flutter/material.dart';

class ColorManager {
  static const backgroundColor = Color(0xff00141f);
  static const darkBackgroundColor = Color(0xFF2F2F2F);
  static Color primaryColor = const Color(0xFF126cfe);
  static const darkPrimaryColor = Color(0xFF00151E);
  static const lightPrimaryColor = Color(0xff2e7dff);
  static const accentColor = Color(0xff8c98a8);
  static const secondaryColor = Color(0XFF25534B);

  static const gradientBackground = [
    gradientColor,
    lightPrimaryColor,
  ];
  static List<Color> iconsGradientBackground = [
    gradientColor,
    primaryColor,
  ];
  static const backgroundGradientBackground = [
    gradientColor2,
    Colors.transparent,
  ];
  static const bodyGradientBackground = [
    gradientColor3,
    Colors.transparent,
  ];

  static const highlightColor = Color(0xFFFFFFFF);
  static const shimmerBaseColor = grey;
  static Color fieldColor = primaryColor.withOpacity(0.5);
  static const white = Color(0xFFFFFFFF);
  static const Color black = Color(0xff000000);
  static const grey = Color(0xFFEDEDED);
  static Color greyText = Colors.white.withOpacity(0.7);
  static const blur = Color(0xFFF3F3F3);
  static const red = Color(0xFFFF0000);
  static const cardColor = Color(0xff0FF0c1427);
  static const darkGrey = Color(0xFF363636);
  static const greenCard = Color(0xFF151a1a);
  static const iconColor = Color(0xFF727272);
  static const gradientColor = Color(0xff468fff);
  static const gradientColor2 = Color(0xFF014D73);
  static const gradientColor3 = Color(0xFF003F5E);
  static const errorColor = Color(0xFFFF0000);
  static const blue = Color(0xff5CE1E6);
  static const pink = Color(0xffFF8BD2);
  static const orange = Color(0xffFFBD59);
  static const yellow = Color(0xffFFDE59);
}
