import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/shared_widgets/custom_video_player.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

import '../../../generated/assets.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: 0.0,
          //   right: -AppDimensions.normalize(25),
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: Image.asset(
          //       StaticUtils.blackWhitePhoto,
          //       height: AppDimensions.normalize(150),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.photosWebText,
                  width: 400,
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 150,
                  child: EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          textAlign: TextAlign.start,
                          curve: Curves.linear,
                          'There are many variations of passages of Lorem Ipsum available,but the majority have suffered alteration in some form, by injected humour, \nor randomised words which don\'t look even slightly',
                          speed: const Duration(
                            milliseconds: 35,
                          ),
                          textStyle: AppText.b2!.copyWith(color: Colors.white),
                        ),
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                ),
                const EntranceFader(
                    offset: Offset(0, 0),
                    delay: Duration(seconds: 1),
                    duration: Duration(milliseconds: 800),
                    child: SizedBox(
                        height: 200, width: 500, child: VideoPlayerWidget())

                  // Image.asset(
                  //   Assets.videosIntro,
                  //   height: size.width < 1200
                  //       ? size.height * 0.8
                  //       : size.height * 0.85,
                  // ),
                ),
                // const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
