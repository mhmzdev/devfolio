import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
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
              child: Text(
                AboutUtils.aboutMeDetail,
                style: context.smallHint.copyWith(
                  height: 2,
                  color: Colors.white,
                  letterSpacing: 1.1,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
