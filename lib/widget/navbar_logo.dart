import 'package:flutter/material.dart';

import '../generated/assets.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: 200,
      Assets.photosWebWhite,
    );
  }
}
