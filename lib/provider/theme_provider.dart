import 'package:flutter/cupertino.dart';
import 'package:folio/provider/theme_prefs.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference darkThemePref = ThemePreference();
  ScrollController scrollController = ScrollController();

  ScrollController get controller => scrollController;

  set scroll(int i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  // App Theme
  bool _lightTheme = false;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
    darkThemePref.setDarkTheme(value);

    notifyListeners();
  }
}
