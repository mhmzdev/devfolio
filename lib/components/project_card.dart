import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class ProjectCard extends StatelessComponent {
  final String title;
  final String description;
  final String icon;
  final String banner;
  final String url;
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.banner,
    required this.url,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(href: url, target: Target.blank, classes: 'banner-card', [
      div(
          classes: 'banner-image',
          styles: Styles.combine([
            Styles.background(
              image: ImageStyle.url(banner),
              size: BackgroundSize.cover,
            ),
          ]),
          []),
      img(src: icon, height: 40),
      span(classes: 'service-title', [
        text(title),
      ]),
      span(classes: 'service-description', [
        text(description),
      ]),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.banner-card')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .box(
          height: 200.px,
          width: 350.px,
          radius: BorderRadius.circular(12.px),
          margin: EdgeInsets.only(top: 25.px, left: 15.px, right: 15.px),
        )
        .background(
          color: themeDarkGreyColor,
        )
        .text(
          decoration: TextDecoration.none,
        ),
    css('.banner-card:hover').box(
      shadow: BoxShadow(
        color: themePrimaryColor,
        offsetX: 0.px,
        offsetY: 0.px,
        blur: 8.px,
        spread: 2.px,
      ),
      transition: Transition('box-shadow', duration: 500),
      cursor: Cursor.pointer,
    ),
    css('.banner-image').box(
      height: 200.px,
      width: 350.px,
    ),
    css('.service-description')
        .text(
          fontSize: 12.px,
          align: TextAlign.center,
        )
        .box(
          padding: EdgeInsets.symmetric(horizontal: 10.px),
          margin: EdgeInsets.only(top: 10.px),
        ),
    css('.banner-image').box(
      opacity: 1.0,
      radius: BorderRadius.circular(12.px),
      position: Position.absolute(),
    ),
    css('.banner-image:hover').box(
      opacity: 0,
      transition: Transition('opacity', duration: 500),
    ),
  ];
}
