import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/widget/custom_text_heading.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          Space.y!,
          // Wrap(
          //     alignment: WrapAlignment.center,
          //     runSpacing: AppDimensions.normalize(10),
          //     children: ContactUtils.titles
          //         .asMap()
          //         .entries
          //         .map((e) => WidgetAnimator(
          //               child: PackageCard(
          //                 packageTitle: ContactUtils.titles[e.key],
          //                 packageDescription: ContactUtils.details[e.key],
          //               ),
          //             ))
          //         .toList()),
        ],
      ),
    );
  }
}
