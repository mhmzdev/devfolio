import 'package:flutter/animation.dart';
import 'package:folio/resources/theme/app_colors.dart';

class PackageUtils {
  static const List<String> banners = [
    "assets/packages/snackbar.png",
    "assets/packages/quranB.png",
    "assets/packages/quranB.png",
  ];

  static const List<String> titles = [
    "Standard",
    "Extended",
    "Signature",
    "Premium",
  ];
  static const List<String> freeTrial = [
    "3 Days Free Trial",
    "5 Days Free Trial",
    "10 Days Free Trial",
    "",
  ];

  static const List<String> prices = [
    "\$${400}",
    "\$${800}",
    "\$${1200}",
    "Custom Pricing",
  ];
  static const List<String> times = [
    "/ Per Month",
    "/ Per 3 Months",
    "/ Per 6 Months",
    "/ Custom Pricing",
  ];

  static const List<Color> colors = [
    ColorManager.greenCard,
    Color(0xFF121A1A),
    Color(0xFF1E1818),
    Color(0xFF1A1915),
  ];
  static const List<Color> borderColors =  [
    Color(0xFF72c09c),
    Color(0xFF607BBE),
    Color(0xFFC97171),
    Color(0xFFFFAA49),
  ];

  static const List<String> description = [
    "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
    "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
    "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
    "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
  ];
}
