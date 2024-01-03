
import 'package:flutter/material.dart';

import 'app_colors.dart';

TextTheme textTheme(context) => Theme.of(context).textTheme;

//! Headline & SubHeadLine Styles
TextStyle headLineStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).titleLarge!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        );

TextStyle subHeadLineStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).titleLarge!.copyWith(
          fontSize: 20,
          color: isWhiteText ? Colors.white : ColorManager.black,
          fontWeight: FontWeight.bold,
        );

//!----------------------------------------------------------------------------

//! Title & Subtitle Styles
TextStyle titleStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).titleMedium!.copyWith(
        color: isWhiteText ? Colors.white : ColorManager.black, fontSize: 18);

TextStyle subTitleStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).titleSmall!.copyWith(
        color: isWhiteText ? Colors.white : ColorManager.black, fontSize: 16);

//! Label Styles
TextStyle labelLargeStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).labelLarge!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
          fontSize: 14,
        );

TextStyle labelMediumStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).labelMedium!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
          fontSize: 14,
        );

TextStyle labelSmallStyle(context, {bool isWhiteText = false}) => textTheme(
      context,
    ).labelSmall!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
        );

//! Body Styles
TextStyle bodyStyle(context, {bool isWhiteText = false}) =>
    textTheme(context).bodyLarge!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
        );

TextStyle hintStyle(context, {bool isWhiteText = false}) =>
    textTheme(context).bodySmall!.copyWith(
          color: isWhiteText ? Colors.white : ColorManager.black,
          fontSize: 16,
        );
