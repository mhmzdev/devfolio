import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

import '../../utils/package_utils.dart';

class PackagesDesktop extends StatefulWidget {
  const PackagesDesktop({Key? key}) : super(key: key);

  @override
  State<PackagesDesktop> createState() => _PackagesDesktopState();
}

class _PackagesDesktopState extends State<PackagesDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nPackages",
          ),
          Space.y1!,
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: PackageUtils.titles
                .asMap()
                .entries
                .map(
                  (e) => PackageCard(
                    index: e.key,
                    color: PackageUtils.colors[e.key],
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
