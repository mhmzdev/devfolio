import 'package:flutter/material.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/generated/assets.dart';
import 'package:folio/resources/app_spaces.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/widget/social_links.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(
          left: AppSpaces.xlLargePadding * 2, top: AppSpaces.xlLargePadding),
      color: ColorManager.black,
      height: height * .37,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppSpaces.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(Assets.photosTextLogo, width: 150),
                    context.largeGap,
                    Text(
                      "A pioneering tech company driven by innovation, excellence,\nand a passion for creating cutting-edge solutions",
                      style: context.greyLabelMedium,
                    ),
                    context.mediumGap,
                    Text(
                      "dev.idea2app@gmail.com",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                    context.largeGap,
                    Text(
                      "+0201118414599",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                    context.smallGap,
                    Text(
                      "+0201061230275",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                  ],
                ),
                context.xxLargeGap,
                context.xxLargeGap,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Product",
                      style: context.whiteTitle,
                    ),
                    context.mediumGap,
                    Text(
                      "About",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                    context.mediumGap,
                    Text(
                      "Services",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                    context.smallGap,
                    Text(
                      "Packages",
                      style: context.greyLabelMedium.copyWith(color: ColorManager.greyText),
                    ),
                  ],
                ),
                context.xxLargeGap,
                context.xxLargeGap,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Follow Us',style: context.whiteTitle,),
                    context.mediumGap,
                    // const SocialLinks(),
                  ],
                )
              ],
            ),
            const Spacer(),
            Text('Copyright © 2024 IDEA 2 APP Corp.\nAll rights reserved.',style: context.smallHint.copyWith(color: ColorManager.greyText.withOpacity(0.6)),)
          ],
        ),
      ),
    );
  }
}
