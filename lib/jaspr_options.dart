// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:devfolio/components/app_button.dart' as prefix0;
import 'package:devfolio/components/nav_bar.dart' as prefix1;
import 'package:devfolio/components/project_card.dart' as prefix2;
import 'package:devfolio/components/service_card.dart' as prefix3;
import 'package:devfolio/pages/home.dart' as prefix4;
import 'package:devfolio/sections/about_me.dart' as prefix5;
import 'package:devfolio/sections/basic_info.dart' as prefix6;
import 'package:devfolio/sections/projects.dart' as prefix7;
import 'package:devfolio/sections/services.dart' as prefix8;
import 'package:devfolio/app.dart' as prefix9;

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
    prefix9.App: ClientTarget<prefix9.App>('app'),
    prefix0.AppButton: ClientTarget<prefix0.AppButton>('components/app_button', params: _prefix0AppButton),
    prefix1.NavBar: ClientTarget<prefix1.NavBar>('components/nav_bar'),
    prefix2.ProjectCard: ClientTarget<prefix2.ProjectCard>('components/project_card', params: _prefix2ProjectCard),
    prefix3.ServiceCard: ClientTarget<prefix3.ServiceCard>('components/service_card', params: _prefix3ServiceCard),
    prefix5.AboutMeSection: ClientTarget<prefix5.AboutMeSection>('sections/about_me'),
  },
  styles: () => [
    ...prefix0.AppButton.styles,
    ...prefix1.NavBar.styles,
    ...prefix2.ProjectCard.styles,
    ...prefix3.ServiceCard.styles,
    ...prefix4.Home.styles,
    ...prefix5.AboutMeSection.styles,
    ...prefix6.BasicInfoSection.styles,
    ...prefix7.ProjectsSections.styles,
    ...prefix8.ServicesSection.styles,
    ...prefix9.AppState.styles,
  ],
);

Map<String, dynamic> _prefix0AppButton(prefix0.AppButton c) =>
    {'label': c.label, 'onPressed': c.onPressed, 'width': c.width, 'height': c.height};
Map<String, dynamic> _prefix2ProjectCard(prefix2.ProjectCard c) =>
    {'title': c.title, 'description': c.description, 'icon': c.icon, 'banner': c.banner, 'url': c.url};
Map<String, dynamic> _prefix3ServiceCard(prefix3.ServiceCard c) => {'icon': c.icon, 'label': c.label};
