import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/home/home_desktop.dart';
import 'package:folio/sections/home/home_mobile.dart';
import 'package:folio/sections/home/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
