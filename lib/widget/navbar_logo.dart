import 'package:flutter/material.dart';

import '../generated/assets.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
       Image.asset(
         Assets.photosIdeaToApp,
         width: 180,
         height: 180,
       )
      ],
    );
  }
}
