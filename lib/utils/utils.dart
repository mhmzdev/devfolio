import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/ieee-cs.png';
  static const String university = 'assets/work/msku.png';
  static const String fullterIsb = 'assets/work/wtm-logo.jpeg';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    "https://twitter.com/elifbilgepp",
    "https://linkedin.com/in/elif-bilge-parlak",
    "https://github.com/elifbilgep",
    "https://medium.com/@elf.prlk64"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1ZBy48QT5ihBcXQ6frXvLyG2pCYr1K687/view?usp=sharing';

  static const String gitHub = 'https://github.com/elifbilgep';
}

class BodyUtils {
  static List<Widget> views = [
    HomePage(),
    Space.y1!,
    About(),
    Services(),
    Space.y1!,
    Portfolio(),
    Space.y1!,
    Contact(),
    Footer(),
  ];
}
