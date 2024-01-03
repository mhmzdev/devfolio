import 'package:flutter/material.dart';

import '../resources/theme/app_colors.dart';

class NavBarUtils {
  static const List<String> names = [
    'HOME' ,
    'ABOUT',
    'SERVICES',
    'PROJECTS',
    'CONTACT',
  ];

  static const List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.work,
    Icons.build,
    Icons.settings,
    Icons.contact_page,
  ];

  static const List<Color> colors =
  [
    ColorManager.blue,
    ColorManager.pink,
    ColorManager.orange,
    ColorManager.yellow,
    ColorManager.blue,
  ];
}
