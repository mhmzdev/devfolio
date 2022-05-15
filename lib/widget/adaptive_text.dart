import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;

  const AdaptiveText(
    this.text, {
    Key? key,
    required this.style,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? SelectableText(
            text,
            style: style,
            textAlign: textAlign,
          )
        : Text(
            text,
            style: style,
            textAlign: textAlign,
          );
  }
}
