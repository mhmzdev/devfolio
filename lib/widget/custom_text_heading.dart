import 'package:flutter/material.dart';
import 'package:folio/configs/app_colors.dart';
import 'package:folio/configs/app_typography.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.h1!.copyWith(
          color: ColorManager.primaryColor, fontWeight: FontWeight.bold),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.b2!
          .copyWith(fontFamily: 'Montserrat', color: ColorManager.white),
    );
  }
}
