import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:folio/resources/theme/app_colors.dart';

class MainModel {
  final String title;
  final Color color;
  MainModel({required this.title, required this.color});

  static List<MainModel> titles = [
    MainModel(title: 'Home', color: ColorManager.blue),
    MainModel(title: 'ABOUT', color: ColorManager.pink),
    MainModel(title: 'SERVICES', color: ColorManager.orange),
    MainModel(title: 'PACKAGES', color: ColorManager.yellow),
  ];
}
