import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/sections/home/view/widgets/get_started_button.dart';
import 'package:folio/sections/home/view/widgets/home_description.dart';

import 'widgets/gradient_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EntranceFader(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: ColorManager.backgroundGradientBackground,
                stops: [0.0, 2.0],
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
                tileMode: TileMode.repeated)),
        child: Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(20),
              AppDimensions.normalize(30),
              AppDimensions.normalize(20),
              AppDimensions.normalize(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //! Text Gradient
                const GradientText(
                  height: 100,
                  width: 400,
                ),
                context.mediumGap,

                //! About
                HomeDescription(
                    isMobile: true, height: 80, textStyle: context.labelSmall),
                context.mediumGap,
                //! Button
                GetStartedButton(
                  textStyle: context.hint.copyWith(fontSize: 10),
                ),
                SizedBox(
                  height: 300,
                )
              ],
            )),
      ),
    );
  }
}
