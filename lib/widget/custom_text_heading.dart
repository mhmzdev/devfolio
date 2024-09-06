import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.h1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppText.l1!.copyWith(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
