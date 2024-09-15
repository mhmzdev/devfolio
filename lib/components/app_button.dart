import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class AppButton extends StatelessComponent {
  final String label;
  final void Function() onPressed;

  final Unit? width;
  final Unit? height;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'app-button',
      styles: Styles.box(width: width, height: height),
      onClick: onPressed,
      [
        span(classes: 'label', [text(label)])
      ],
    );
  }

  @css
  static final List<StyleRule> styles = [
    css('.app-button')
        .box(
          width: 130.px,
          padding: EdgeInsets.all(10.px),
          radius: BorderRadius.circular(6.px),
          border: Border.all(BorderSide(
            color: primaryColor,
          )),
        )
        .background(
          color: Colors.transparent,
        ),
    css('.app-button:hover').background(
      color: primaryColor,
    ),
    css('.label').text(fontSize: 12.px),
  ];
}
