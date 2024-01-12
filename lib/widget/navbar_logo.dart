import 'package:flutter/material.dart';

import '../generated/assets.dart';

class NavBarLogo extends StatelessWidget {
  final double width;
  const NavBarLogo({Key? key, this.width = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: width,
      Assets.photosWebLogoWhite,
      height: 60,
    );
  }
}
