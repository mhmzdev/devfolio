import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class ContactCard extends StatelessComponent {
  final String icon;
  final String title;
  final String description;
  final String action;
  const ContactCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.action,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(href: action, target: Target.blank, classes: 'contact-card', [
      i(classes: '$icon c-icon', []),
      span(classes: 'c-title', [
        text(title),
      ]),
      span(classes: 'c-description', [
        text(description),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.contact-card')
        .text(decoration: TextDecoration.none)
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .box(
          width: 300.px,
          height: 150.px,
          padding: EdgeInsets.all(15.px),
          radius: BorderRadius.circular(12.px),
          margin: EdgeInsets.only(top: 25.px, left: 15.px, right: 15.px),
        )
        .background(
          color: themeDarkGreyColor,
        ),
    css('.contact-card:hover').box(
      shadow: BoxShadow(
        color: themePrimaryColor,
        offsetX: 0.px,
        offsetY: 0.px,
        blur: 8.px,
        spread: 2.px,
      ),
      transition: Transition('box-shadow', duration: 500),
    ),
    css('.c-icon').text(
      fontSize: 50.px,
      color: themePrimaryColor,
    ),
    css('.c-title')
        .text(
          fontSize: 15.px,
          color: themePrimaryColor,
        )
        .box(
          margin: EdgeInsets.symmetric(vertical: 15.px),
        ),
    css('.c-description').text(
      fontSize: 12.px,
    ),
  ];
}
