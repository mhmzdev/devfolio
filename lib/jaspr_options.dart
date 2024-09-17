// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:devfolio/components/app_button.dart' as prefix0;
import 'package:devfolio/components/contact.dart' as prefix1;
import 'package:devfolio/components/footer.dart' as prefix2;
import 'package:devfolio/components/nav_bar.dart' as prefix3;
import 'package:devfolio/components/project_card.dart' as prefix4;
import 'package:devfolio/components/service_card.dart' as prefix5;
import 'package:devfolio/pages/home.dart' as prefix6;
import 'package:devfolio/sections/about_me.dart' as prefix7;
import 'package:devfolio/sections/basic_info.dart' as prefix8;
import 'package:devfolio/sections/contact.dart' as prefix9;
import 'package:devfolio/sections/projects.dart' as prefix10;
import 'package:devfolio/sections/services.dart' as prefix11;
import 'package:devfolio/app.dart' as prefix12;

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
    prefix12.App: ClientTarget<prefix12.App>('app'),
    prefix0.AppButton: ClientTarget<prefix0.AppButton>('components/app_button', params: _prefix0AppButton),
    prefix1.ContactCard: ClientTarget<prefix1.ContactCard>('components/contact', params: _prefix1ContactCard),
    prefix2.Footer: ClientTarget<prefix2.Footer>('components/footer'),
    prefix3.NavBar: ClientTarget<prefix3.NavBar>('components/nav_bar'),
    prefix4.ProjectCard: ClientTarget<prefix4.ProjectCard>('components/project_card', params: _prefix4ProjectCard),
    prefix5.ServiceCard: ClientTarget<prefix5.ServiceCard>('components/service_card', params: _prefix5ServiceCard),
    prefix7.AboutMeSection: ClientTarget<prefix7.AboutMeSection>('sections/about_me'),
  },
  styles: () => [
    ...prefix0.AppButton.styles,
    ...prefix1.ContactCard.styles,
    ...prefix2.Footer.styles,
    ...prefix3.NavBar.styles,
    ...prefix4.ProjectCard.styles,
    ...prefix5.ServiceCard.styles,
    ...prefix6.Home.styles,
    ...prefix7.AboutMeSection.styles,
    ...prefix8.BasicInfoSection.styles,
    ...prefix9.ContactSection.styles,
    ...prefix10.ProjectsSections.styles,
    ...prefix11.ServicesSection.styles,
    ...prefix12.AppState.styles,
  ],
);

Map<String, dynamic> _prefix0AppButton(prefix0.AppButton c) =>
    {'label': c.label, 'onPressed': c.onPressed, 'width': c.width, 'height': c.height};
Map<String, dynamic> _prefix1ContactCard(prefix1.ContactCard c) =>
    {'icon': c.icon, 'title': c.title, 'description': c.description, 'action': c.action};
Map<String, dynamic> _prefix4ProjectCard(prefix4.ProjectCard c) =>
    {'title': c.title, 'description': c.description, 'icon': c.icon, 'banner': c.banner, 'url': c.url};
Map<String, dynamic> _prefix5ServiceCard(prefix5.ServiceCard c) => {'icon': c.icon, 'label': c.label};
