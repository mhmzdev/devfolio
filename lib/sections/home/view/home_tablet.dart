import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/sections/home/view/widgets/get_started_button.dart';
import 'package:folio/sections/home/view/widgets/home_description.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../generated/assets.dart';
import 'widgets/gradient_text.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EntranceFader(
      child: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //     colors: ColorManager.backgroundGradientBackground,
            //     stops: [0.0, 2.0],
            //     begin: FractionalOffset.topRight,
            //     end: FractionalOffset.bottomLeft,
            //     tileMode: TileMode.repeated),
            ),
        child: Container(
          margin: EdgeInsets.fromLTRB(
            AppDimensions.normalize(20),
            AppDimensions.normalize(70),
            AppDimensions.normalize(20),
            AppDimensions.normalize(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //! Text Gradient
                  const GradientText(
                    height: 100,
                    width: 400,
                  ),
                  context.mediumGap,

                  //! About
                  SizedBox(
                    width: 400,
                    child: HomeDescription(
                        height: 80, textStyle: context.labelSmall),
                  ),
                  context.mediumGap,
                  //! Button
                  GetStartedButton(
                    textStyle: context.hint,
                  ),
                ],
              ),
              const Spacer(),
              // const EntranceFader(
              //     offset: Offset(0, 0),
              //     delay: Duration(seconds: 1),
              //     duration: Duration(milliseconds: 800),
              //     child: SizedBox(
              //         height: 600, width: 1000, child: VideoPlayerWidget())),
            ],
          ),
        ),
      ),
    );
  }
}
