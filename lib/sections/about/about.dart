import 'package:flutter/material.dart';
import 'package:folio/sections/about/desktop_about.dart';
import 'package:folio/sections/about/mobile_about.dart';
import 'package:folio/sections/about/tab_about.dart';

import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
