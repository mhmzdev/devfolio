import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(
        AppDimensions.normalize(20),
        0,
        AppDimensions.normalize(20),
        AppDimensions.normalize(20),
      ),
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
    );
  }
}
