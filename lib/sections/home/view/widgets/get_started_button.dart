import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../../provider/scroll_provider.dart';

class GetStartedButton extends StatelessWidget {
  final TextStyle textStyle;
  const GetStartedButton({super.key, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient:
                const LinearGradient(colors: ColorManager.gradientBackground)),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          splashColor: ColorManager.primaryColor,
          highlightColor: ColorManager.primaryColor,
          hoverColor: ColorManager.grey.withOpacity(0.3),
          onPressed: () {
            scrollProvider.scroll(4);
          },
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              "Start Your Business",
              style: textStyle.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
