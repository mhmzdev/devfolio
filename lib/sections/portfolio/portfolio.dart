import 'package:flutter/material.dart';
import 'package:folio/sections/portfolio/portfolio_desktop.dart';
import 'package:folio/sections/portfolio/portfolio_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const PortfolioMobileTab(),
      tablet: const PortfolioMobileTab(),
      desktop: const PortfolioDesktop(),
    );
  }
}
