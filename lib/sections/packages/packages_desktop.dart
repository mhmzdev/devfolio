import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/generated/assets.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/package_card.dart';

import '../../utils/package_utils.dart';

class PackagesDesktop extends StatelessWidget {
  const PackagesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppDimensions.normalize(20),
        AppDimensions.normalize(70),
        AppDimensions.normalize(20),
        AppDimensions.normalize(20),
      ),
      child: EntranceFader(

        child: Column(
          children: [
            const CustomSectionHeading(
              text: "Packages",
            ),
            const CustomSectionSubHeading(
              text: '\n\n',
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: PackageUtils.titles
                  .asMap()
                  .entries
                  .map(
                    (e) => PackageCard(
                  packageIndex: e.key,
                  color: PackageUtils.colors[e.key],
                  packageTime: PackageUtils.times[e.key],
                  freeTrial: PackageUtils.freeTrial[e.key],
                  borderColor: PackageUtils.borderColors[e.key],
                  packagePrice: PackageUtils.prices[e.key],
                  banner: e.value,
                  packageTitle: PackageUtils.titles[e.key],
                  packageDescription: PackageUtils.description[e.key],
                ),
              )
                  .toList(),
            ),
          ],
        ),
      ),
    );
    //   Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Positioned.fill(
    //       child: Opacity(
    //         opacity: 0.3,
    //         child: SizedBox(
    //           height: 700,
    //           width: double.infinity,
    //           child: Transform.flip(
    //               flipY: true,
    //               child: Image.asset(fit: BoxFit.cover, Assets.photosBlur)),
    //         ),
    //       ),
    //     ),
    //     EntranceFader(
    //       child: Column(
    //         children: [
    //           const CustomSectionHeading(
    //             text: "Packages",
    //           ),
    //           const CustomSectionSubHeading(
    //             text: '\n\n',
    //           ),
    //           Wrap(
    //             alignment: WrapAlignment.center,
    //             crossAxisAlignment: WrapCrossAlignment.center,
    //             runSpacing: AppDimensions.normalize(10),
    //             children: PackageUtils.titles
    //                 .asMap()
    //                 .entries
    //                 .map(
    //                   (e) => PackageCard(
    //                 packageIndex: e.key,
    //                 color: PackageUtils.colors[e.key],
    //                 packageTime: PackageUtils.times[e.key],
    //                 freeTrial: PackageUtils.freeTrial[e.key],
    //                 borderColor: PackageUtils.borderColors[e.key],
    //                 packagePrice: PackageUtils.prices[e.key],
    //                 banner: e.value,
    //                 packageTitle: PackageUtils.titles[e.key],
    //                 packageDescription: PackageUtils.description[e.key],
    //               ),
    //             )
    //                 .toList(),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
