import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class ServiceCard extends StatelessComponent {
  final String icon;
  final String label;
  const ServiceCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'service-card', [
      img(src: icon, height: 80),
      span(classes: 'service-title', [
        text(label),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.service-card')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .box(
          padding: EdgeInsets.all(15.px),
          height: 200.px,
          width: 250.px,
          radius: BorderRadius.circular(12.px),
          margin: EdgeInsets.only(top: 15.px),
        )
        .background(
          color: themeDarkGreyColor,
        ),
    css('.service-title')
        .text(
          fontSize: 14.px,
        )
        .box(margin: EdgeInsets.only(top: 10.px)),
    css('.service-card:hover').box(
      shadow: BoxShadow(
        color: themePrimaryColor,
        offsetX: 0.px,
        offsetY: 0.px,
        blur: 8.px,
        spread: 2.px,
      ),
      transition: Transition('box-shadow', duration: 500),
    ),
  ];
}
