import 'package:devfolio/components/app_button.dart';
import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

class NavBar extends StatelessComponent {
  const NavBar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'navbar', [
      div([
        span([text('<')]),
        span(classes: 'brand', [text('Hamza')]),
        span([text('/>')]),
      ]),
      div(classes: 'labels', [
        a(
          classes: 'navbar-label',
          href: '#',
          [
            text('HOME'),
          ],
        ),
        a(
          href: '#',
          classes: 'navbar-label',
          [
            text('ABOUT'),
          ],
        ),
        a(
          href: '#',
          classes: 'navbar-label',
          [
            text('SERVICES'),
          ],
        ),
        a(
          href: '#',
          classes: 'navbar-label',
          [
            text('PROJECTS'),
          ],
        ),
        a(
          href: '#',
          classes: 'navbar-label',
          [
            text('CONTACT'),
          ],
        ),
        AppButton(
          label: 'RESUME',
          onPressed: () {},
        ),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.navbar')
        .box(padding: EdgeInsets.all(25.px))
        .flexbox(
          direction: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        )
        .background(
          color: Colors.black,
        ),
    css('.navbar-label')
        .box(
          padding: EdgeInsets.only(right: 35.px),
        )
        .text(
          fontSize: 12.px,
          decoration: TextDecoration.none,
        )
        .flexbox(
          direction: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          alignItems: AlignItems.center,
        ),
    css('.navbar-label:hover').text(
      color: primaryColor,
    ),
    css('.labels').flexbox(
      direction: FlexDirection.row,
      justifyContent: JustifyContent.end,
    ),
    css.import(
      'fonts/agustina/agustina.otf',
    ),
    css('.brand').text(
      fontFamily: FontFamily('fonts/agustina/agustina.otf'),
    ),
  ];
}
