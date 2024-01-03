import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/generated/assets.dart';
import 'package:provider/provider.dart';

import '../../../animations/entrance_fader.dart';
import '../../../provider/scroll_provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    Size size = MediaQuery.of(context).size;

    return Container(
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
                SizedBox(
                  height: 100,
                  child: Image.asset(
                    Assets.photosWebTextGredinat,
                    width: 700,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //! About
                SizedBox(
                  height: 80,
                  child: EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          curve: Curves.linear,
                          'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form.',
                          speed: const Duration(
                            milliseconds: 35,
                          ),
                          textStyle: AppText.b2!
                              .copyWith(color: ColorManager.greyText),
                        ),
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //! Button
                EntranceFader(
                  offset: const Offset(0, -10),
                  delay: const Duration(milliseconds: 100),
                  duration: const Duration(milliseconds: 250),
                  child: Container(
                    margin: Space.h!,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: ColorManager.gradientBackground)),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
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
                          style: AppText.l1!
                              .copyWith(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            // const EntranceFader(
            //     offset: Offset(0, 0),
            //     delay: Duration(seconds: 1),
            //     duration: Duration(milliseconds: 800),
            //     child: SizedBox(
            //         height: 600, width: 1000, child: VideoPlayerWidget())),
          ],
        ),
      ),
    );
  }
}
