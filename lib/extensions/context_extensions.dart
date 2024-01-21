
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../resources/app_spaces.dart';
import '../resources/theme/app_colors.dart';
import '../resources/theme/font_styles.dart';

extension ThemeExtensions on BuildContext {
  ThemeData get appTheme => Theme.of(this);

  //? Get text style shortcuts
  TextStyle get headLine => headLineStyle(this);

  TextStyle get whiteHeadLine => headLineStyle(this, isWhiteText: true);

  TextStyle get subHeadLine => subHeadLineStyle(this);

  TextStyle get whiteSubHeadLine => subHeadLineStyle(this, isWhiteText: true);

  TextStyle get authTitle =>
      titleStyle(this).copyWith(fontWeight: FontWeight.bold);

  TextStyle get title => titleStyle(this);
  TextStyle get priceTitle => titleStyle(this).copyWith(
      fontWeight: FontWeight.bold, color: ColorManager.darkPrimaryColor);
  TextStyle get boldTitle =>
      titleStyle(this).copyWith(fontWeight: FontWeight.bold);

  TextStyle get whiteTitle => titleStyle(this, isWhiteText: true);

  TextStyle get subTitle => subTitleStyle(this);

  TextStyle get whiteSubTitle => subTitleStyle(this, isWhiteText: true);

  TextStyle get labelLarge => labelLargeStyle(this);

  TextStyle get greyLabelLarge => labelLargeStyle(this)
      .copyWith(color: const Color(0xff787878), fontSize: 16);

  TextStyle get appBarTitle => labelLargeStyle(this).copyWith(
      color: ColorManager.primaryColor,
      letterSpacing: isEng ? 2 : 0,
      fontWeight: FontWeight.bold);

  TextStyle get whiteLabelLarge => labelLargeStyle(this, isWhiteText: true);

  TextStyle get labelMedium => labelMediumStyle(this);

  TextStyle get whiteLabelMedium => labelMediumStyle(this, isWhiteText: true);

  TextStyle get greyLabelMedium =>
      labelMediumStyle(this).copyWith(color: const Color(0xffbfc6ce));

  TextStyle get orderGreyLabelMedium => labelMediumStyle(this)
      .copyWith(color: ColorManager.darkGrey.withOpacity(0.9));

  TextStyle get labelSmall => labelSmallStyle(this);

  TextStyle get whitelabelSmall => labelSmallStyle(this, isWhiteText: true);

  TextStyle get body => bodyStyle(this);

  TextStyle get whiteBody => bodyStyle(this, isWhiteText: true);

  TextStyle get hint => hintStyle(this);

  TextStyle get blueHint => hintStyle(this).copyWith(
      color: const Color(0xff364356),
      fontSize: 14,
      fontWeight: FontWeight.bold);

  TextStyle get whiteHint => hintStyle(this, isWhiteText: true);

  TextStyle get whiteSmallHint =>
      hintStyle(this, isWhiteText: true).copyWith(fontSize: 10);

  TextStyle get smallHint => hintStyle(
        this,
      ).copyWith(fontSize: 12);
}

// extension Localization on BuildContext {
//   //? Localization shortcuts
//   S get ar => S.of(this);
// }

extension NavigationExtensions on BuildContext {
  void to(Widget widget) => Navigator.of(this).push(
        MaterialPageRoute(builder: (_) => widget),
      );

  void toReplacement(Widget widget) => Navigator.of(this).pushReplacement(
        MaterialPageRoute(builder: (_) => widget),
      );

  void toNamed(String routeName) => Navigator.of(this).pushNamed(routeName);

  void toNamedReplacement(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);

  void back() => Navigator.of(this).pop();
}

extension SizeExensions on BuildContext {
  //? Get size shortcuts
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  //? Get space shortcuts -- Horizontal & Vertical

  Gap get xSmallGap => const Gap(AppSpaces.xSmallPadding);

  Gap get smallGap => const Gap(AppSpaces.smallPadding);

  Gap get mediumGap => const Gap(AppSpaces.mediumPadding);

  Gap get largeGap => const Gap(AppSpaces.largePadding);

  Gap get xlLargeGap => const Gap(AppSpaces.xlLargePadding);

  Gap get xxLargeGap => const Gap(AppSpaces.xlLargePadding * 2);

  Gap get fieldsGap => const Gap(AppSpaces.largePadding);
}

enum FlushBarType { add, update, delete, error, noInternet, timeOut }



extension Appearance on BuildContext {
  bool get isDark {
    final bool isDarkMode = Theme.of(this).brightness == Brightness.dark;

    return isDarkMode;
  }
}

extension AppSettings on BuildContext {
  bool get isEng {
    final locale = Localizations.localeOf(this);
    return locale.languageCode == 'en';
  }

  String langText(String langCode) {
    if (langCode == 'en') return 'English';
    return 'العربية';
  }

}
