import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

import '../resources/theme/app_colors.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  final Color color;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    final isGetStartedButton = index == 4;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin:   Space.h!,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: isGetStartedButton ?const LinearGradient(colors: ColorManager.gradientBackground) : null
        ),
        child: MaterialButton(

          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(40)
          ),
          splashColor: ColorManager.primaryColor,
          highlightColor: ColorManager.primaryColor,
          hoverColor:  ColorManager.grey.withOpacity(0.3),
          onPressed: () {
            scrollProvider.scroll(index);
          },
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              label,
              style: AppText.l1!.copyWith(
                color:  Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

