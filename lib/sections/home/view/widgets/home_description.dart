import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/resources/theme/app_colors.dart';

import '../../../../animations/entrance_fader.dart';

class HomeDescription extends StatelessWidget {
  final double height;
  final TextStyle textStyle;
  final bool isMobile;

  const HomeDescription(
      {super.key,
      required this.height,
      required this.textStyle,
      this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: EntranceFader(
        offset: const Offset(-10, 0),
        delay: const Duration(seconds: 1),
        duration: const Duration(milliseconds: 800),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              curve: Curves.linear,
              'There are many variations of passages of Lorem Ipsum available,but the majority have suffered alteration in some form.',
              speed: const Duration(
                milliseconds: 35,
              ),
              textStyle: textStyle.copyWith(color: ColorManager.greyText),
            ),
          ],
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
