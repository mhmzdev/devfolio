import 'package:jaspr/jaspr.dart';

@client
class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer(classes: 'foot', [
      span([text('Developed in 💙 with')]),
      a(
          href: 'https://docs.page/schultek/jaspr',
          classes: 'tech-name',
          target: Target.blank,
          styles: Styles.text(color: Color.hex('#1977d1')),
          [text('Jaspr')]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.foot')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 2.vh),
        )
        .text(fontSize: 12.px),
    css('.tech-name')
        .text(
          fontSize: 12.px,
          decoration: TextDecoration.none,
        )
        .box(margin: EdgeInsets.only(left: 5.px)),
  ];
}
