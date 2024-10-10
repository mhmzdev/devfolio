import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class AppButton extends StatelessComponent {
  final String label;
  final String href;

  final Unit? width;
  final Unit? height;

  const AppButton({
    super.key,
    required this.label,
    required this.href,
    this.width,
    this.height,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
      classes: 'app-button',
      target: Target.blank,
      styles: Styles.box(width: width, height: height),
      href: href,
      [
        span(classes: 'label', [text(label)])
      ],
    );
  }

  @css
  static final List<StyleRule> styles = [
    css('.app-button')
        .box(
          width: 100.px,
          padding: EdgeInsets.all(10.px),
          radius: BorderRadius.circular(6.px),
          border: Border.all(BorderSide(
            color: themePrimaryColor,
            width: 1.px,
          )),
        )
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
        )
        .text(
          decoration: TextDecoration.none,
        )
        .background(
          color: Colors.transparent,
        ),
    css('.app-button:hover')
        .background(
          color: themePrimaryColor,
        )
        .box(
          transition: Transition('background-color', duration: 500),
          cursor: Cursor.pointer,
        ),
    css('.label').text(fontSize: 12.px),
  ];
}
