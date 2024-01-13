import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/generated/assets.dart';
import 'package:provider/provider.dart';

import '../../../../animations/entrance_fader.dart';
import '../../../../provider/scroll_provider.dart';
import 'widgets/get_started_button.dart';
import 'widgets/gradient_text.dart';
import 'widgets/home_description.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EntranceFader(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: SizedBox(
              height: 600,
              width: double.infinity,
              child: Image.asset(fit: BoxFit.cover, Assets.photosBlur),
            ),
          ),
          Container(
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
                        width: 700,
                      ),
                      context.largeGap,

                      //! About
                      SizedBox(
                        width: 700,
                        child: HomeDescription(
                            height: 80, textStyle: context.labelLarge),
                      ),
                      context.largeGap,
                      //! Button
                      GetStartedButton(
                        textStyle: context.title,
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
        ],
      ),
    );
  }
}
