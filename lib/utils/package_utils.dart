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
    Color(0xFF192D31),
    Color(0xFF2D2424),
    Color(0xFF23221C),
  ];
  static const List<Color> borderColors = [
    Color(0xFF72c09c),
    Color(0xFF609CBE),
    Color(0xFFC97171),
    Color(0xFFFFAA49),
  ];

  static const List<String> description = [
    "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
    "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
    "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
    "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
    "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
    "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
    "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
    "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
    "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
    "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
    "Its my end semester package. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
  ];
}
