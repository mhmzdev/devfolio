// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:devfolio/components/app_button.dart' as prefix0;
import 'package:devfolio/components/nav_bar.dart' as prefix1;
import 'package:devfolio/pages/home.dart' as prefix2;
import 'package:devfolio/sections/about_me.dart' as prefix3;
import 'package:devfolio/sections/basic_info.dart' as prefix4;
import 'package:devfolio/app.dart' as prefix5;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix5.App: ClientTarget<prefix5.App>('app'),
    prefix0.AppButton: ClientTarget<prefix0.AppButton>('components/app_button', params: _prefix0AppButton),
    prefix3.AboutMeSection: ClientTarget<prefix3.AboutMeSection>('sections/about_me'),
  },
  styles: () => [
    ...prefix0.AppButton.styles,
    ...prefix1.NavBar.styles,
    ...prefix2.Home.styles,
    ...prefix3.AboutMeSection.styles,
    ...prefix4.BasicInfoSection.styles,
    ...prefix5.AppState.styles,
  ],
);

Map<String, dynamic> _prefix0AppButton(prefix0.AppButton c) =>
    {'label': c.label, 'onPressed': c.onPressed, 'width': c.width, 'height': c.height};
