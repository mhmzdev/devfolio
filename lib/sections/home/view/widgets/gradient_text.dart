import 'package:flutter/material.dart';
import 'package:folio/generated/assets.dart';

class GradientText extends StatelessWidget {
  final double height;
  final double width;

  const GradientText({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset(
        Assets.photosWebTextGredinat,
        width: width,
      ),
    );
  }
}
