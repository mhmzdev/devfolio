import 'package:flutter/material.dart';
import 'package:folio/sections/serviceDetails/serviceDetailsDesktop.dart';
import 'package:folio/sections/serviceDetails/serviceDetailsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServiceDetails extends StatelessWidget {
  final String dec;
  final String title;

  const ServiceDetails({Key key, this.dec, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceDetailsMobile(
        serviceTitle: title,
        serviceDesc: dec,
      ),
      tablet: ServiceDetailsMobile(
        serviceTitle: title,
        serviceDesc: dec,
      ),
      desktop: ServiceDetailsDesktop(
        serviceTitle: title,
        details: dec,
      ),
    );
  }
}
