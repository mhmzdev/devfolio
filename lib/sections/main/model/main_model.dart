import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:folio/configs/app_colors.dart';

class MainModel
{
  final  String title;
   final Color color;
   MainModel({required this.title,required this.color});

   static List<MainModel> titles =
   [
     MainModel(title: 'Home', color: AppColors.blue),
     MainModel(title: 'ABOUT', color: AppColors.pink),
     MainModel(title: 'SERVICES', color: AppColors.orange),
     MainModel(title: 'PROJECTS', color: AppColors.yellow),
     MainModel(title: 'GET STARTED', color: AppColors.pink),
   ];

}