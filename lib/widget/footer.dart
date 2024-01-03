import 'package:flutter/material.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/generated/assets.dart';
import 'package:folio/resources/app_spaces.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/navbar_logo.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: AppSpaces.xlLargePadding * 2,top: AppSpaces.xlLargePadding),
      color: ColorManager.black,
      height: height * .4,
      width: width,
      child: Column
        (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [

          NavBarLogo(
            width: 250,
          ),
           context.largeGap,
           Text(
            "A pioneering tech company driven by innovation, excellence,\nand a passion for creating cutting-edge solutions",
            style: context.greyLabelMedium,
          ),

        ],
      ),
    );
  }
}
