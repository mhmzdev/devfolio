import 'package:flutter/material.dart';

import '../generated/assets.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: 200,
      width: 300,
      Assets.photosWebWhite,
    );
  }
}
