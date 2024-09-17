// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:devfolio/components/app_button.dart' as prefix0;
import 'package:devfolio/components/nav_bar.dart' as prefix1;
import 'package:devfolio/components/service_card.dart' as prefix2;
import 'package:devfolio/pages/home.dart' as prefix3;
import 'package:devfolio/sections/about_me.dart' as prefix4;
import 'package:devfolio/sections/basic_info.dart' as prefix5;
import 'package:devfolio/sections/services.dart' as prefix6;
import 'package:devfolio/app.dart' as prefix7;

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
    prefix7.App: ClientTarget<prefix7.App>('app'),
    prefix0.AppButton: ClientTarget<prefix0.AppButton>('components/app_button', params: _prefix0AppButton),
    prefix1.NavBar: ClientTarget<prefix1.NavBar>('components/nav_bar'),
    prefix4.AboutMeSection: ClientTarget<prefix4.AboutMeSection>('sections/about_me'),
  },
  styles: () => [
    ...prefix0.AppButton.styles,
    ...prefix1.NavBar.styles,
    ...prefix2.ServiceCard.styles,
    ...prefix3.Home.styles,
    ...prefix4.AboutMeSection.styles,
    ...prefix5.BasicInfoSection.styles,
    ...prefix6.ServicesSection.styles,
    ...prefix7.AppState.styles,
  ],
);

Map<String, dynamic> _prefix0AppButton(prefix0.AppButton c) =>
    {'label': c.label, 'onPressed': c.onPressed, 'width': c.width, 'height': c.height};
