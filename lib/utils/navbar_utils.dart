import 'package:flutter/material.dart';

import '../configs/app_colors.dart';

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
    AppColors.blue,
    AppColors.pink,
    AppColors.orange,
    AppColors.yellow,
    AppColors.blue,
  ];
}
