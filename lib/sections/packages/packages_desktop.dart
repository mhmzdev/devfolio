import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/package_card.dart';

import '../../utils/package_utils.dart';

class PackagesDesktop extends StatelessWidget {
  const PackagesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nPackages",
          ),
          const CustomSectionSubHeading(
            text: '\n\n',
          ),
          Space.y!,
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
    );
  }
}
