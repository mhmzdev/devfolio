import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/packages/packages_desktop.dart';
import 'package:folio/sections/packages/packages_mobile.dart';

class Packages extends StatelessWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PackagesMobileTab(),
      tablet: PackagesMobileTab(),
      desktop: PackagesDesktop(),
    );
  }
}
