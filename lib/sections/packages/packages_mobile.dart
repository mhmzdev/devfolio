import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/package_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

import '../../widget/package_card.dart';

class PackagesMobileTab extends StatelessWidget {
  const PackagesMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          SizedBox(
            height: 570,
            width: 300,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              scrollDirection: Axis.horizontal,
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
          ),
        ],
      ),
    );
  }
}
