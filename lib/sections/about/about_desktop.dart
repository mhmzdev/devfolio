import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

import '../../animations/entrance_fader.dart';
import '../../generated/assets.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return EntranceFader(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
              opacity: 0.4 ,
              child: Transform.flip(
                flipY: true,
                child: SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: Image.asset(fit: BoxFit.cover, Assets.photosBlur)),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(20),
              AppDimensions.normalize(20),
              AppDimensions.normalize(20),
              AppDimensions.normalize(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomSectionHeading(
                    text: '\nAbout Us',
                  ),
                  const CustomSectionSubHeading(
                    text: 'Who We Are ?',
                  ),
                  Space.y1!,
                  SizedBox(
                    width: width / 2,
                    child: Text(
                      AboutUtils.aboutMeDetail,
                      style: AppText.b2!.copyWith(
                        height: 2,
                        letterSpacing: 1.1,
                        fontFamily: 'Montserrat',
                        fontSize: AppDimensions.normalize(5),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
