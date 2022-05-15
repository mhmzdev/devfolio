import 'package:flutter/material.dart';
import 'package:folio/sections/services/services_desktop.dart';
import 'package:folio/sections/services/services_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ServiceMobile(),
      tablet: const ServiceMobile(),
      desktop: const ServiceDesktop(),
    );
  }
}
