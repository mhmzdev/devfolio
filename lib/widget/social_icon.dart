import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String? icon;
  final String? socialLink;
  final double? height;
  final double? horizontalPadding;

  const SocialMediaIconBtn({
    Key? key,
    this.icon,
    this.socialLink,
    this.height,
    this.horizontalPadding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      child: IconButton(
        icon: Image.network(
          icon!,
          color: themeProvider.lightTheme ? Colors.black : Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchURL(
          socialLink!,
        ),
        hoverColor: kPrimaryColor,
      ),
    );
  }
}
