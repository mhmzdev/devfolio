import 'package:flutter/material.dart';
import 'package:folio/sections/home/home_desktop.dart';
import 'package:folio/sections/home/home_mobile.dart';
import 'package:folio/sections/home/home_tab.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      tablet: const HomeTab(),
      desktop: const HomeDesktop(),
    );
  }
}
