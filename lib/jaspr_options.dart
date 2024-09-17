// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:devfolio/components/app_button.dart' as prefix0;
import 'package:devfolio/components/contact.dart' as prefix1;
import 'package:devfolio/components/nav_bar.dart' as prefix2;
import 'package:devfolio/components/project_card.dart' as prefix3;
import 'package:devfolio/components/service_card.dart' as prefix4;
import 'package:devfolio/pages/home.dart' as prefix5;
import 'package:devfolio/sections/about_me.dart' as prefix6;
import 'package:devfolio/sections/basic_info.dart' as prefix7;
import 'package:devfolio/sections/contact.dart' as prefix8;
import 'package:devfolio/sections/projects.dart' as prefix9;
import 'package:devfolio/sections/services.dart' as prefix10;
import 'package:devfolio/app.dart' as prefix11;

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
    prefix11.App: ClientTarget<prefix11.App>('app'),
    prefix0.AppButton: ClientTarget<prefix0.AppButton>('components/app_button', params: _prefix0AppButton),
    prefix1.ContactCard: ClientTarget<prefix1.ContactCard>('components/contact', params: _prefix1ContactCard),
    prefix2.NavBar: ClientTarget<prefix2.NavBar>('components/nav_bar'),
    prefix3.ProjectCard: ClientTarget<prefix3.ProjectCard>('components/project_card', params: _prefix3ProjectCard),
    prefix4.ServiceCard: ClientTarget<prefix4.ServiceCard>('components/service_card', params: _prefix4ServiceCard),
    prefix6.AboutMeSection: ClientTarget<prefix6.AboutMeSection>('sections/about_me'),
  },
  styles: () => [
    ...prefix0.AppButton.styles,
    ...prefix1.ContactCard.styles,
    ...prefix2.NavBar.styles,
    ...prefix3.ProjectCard.styles,
    ...prefix4.ServiceCard.styles,
    ...prefix5.Home.styles,
    ...prefix6.AboutMeSection.styles,
    ...prefix7.BasicInfoSection.styles,
    ...prefix8.ContactSection.styles,
    ...prefix9.ProjectsSections.styles,
    ...prefix10.ServicesSection.styles,
    ...prefix11.AppState.styles,
  ],
);

Map<String, dynamic> _prefix0AppButton(prefix0.AppButton c) =>
    {'label': c.label, 'onPressed': c.onPressed, 'width': c.width, 'height': c.height};
Map<String, dynamic> _prefix1ContactCard(prefix1.ContactCard c) =>
    {'icon': c.icon, 'title': c.title, 'description': c.description, 'action': c.action};
Map<String, dynamic> _prefix3ProjectCard(prefix3.ProjectCard c) =>
    {'title': c.title, 'description': c.description, 'icon': c.icon, 'banner': c.banner, 'url': c.url};
Map<String, dynamic> _prefix4ServiceCard(prefix4.ServiceCard c) => {'icon': c.icon, 'label': c.label};
