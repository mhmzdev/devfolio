import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/resources/theme/app_colors.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => IconButton(
              highlightColor: Colors.white54,
              icon: Image.asset(
                e.value,
                color:ColorManager.greyText,
                height: 30,
              ),
              iconSize: 30,
              onPressed: () => openURL(
                StaticUtils.socialLinks[e.key],
              ),
              hoverColor:  ColorManager.grey.withOpacity(0.3),
            ),
          )
          .toList(),
    );
  }
}
