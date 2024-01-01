import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

class AppText {
  static TextStyle? btn;

  // Headings
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  // Body
  static TextStyle? b1;
  static TextStyle? b1b;
  static TextStyle? b2;
  static TextStyle? b2b;

  // Label
  static TextStyle? l1;
  static TextStyle? l1b;
  static TextStyle? l2;
  static TextStyle? l2b;

  static init() {
    const b = FontWeight.bold;
    const baseStyle = TextStyle(fontFamily: fontFamily);

    h1 = baseStyle.copyWith(fontSize: AppDimensions.font(22),color: Colors.white);
    h1b = h1!.copyWith(fontWeight: b,color: Colors.white);

    h2 = baseStyle.copyWith(fontSize: AppDimensions.font(18),color: Colors.white);
    h2b = h2!.copyWith(fontWeight: b,color: Colors.white);

    h3 = baseStyle.copyWith(fontSize: AppDimensions.font(15),color: Colors.white);
    h3b = h3!.copyWith(fontWeight: b,color: Colors.white);

    b1 = baseStyle.copyWith(fontSize: AppDimensions.font(10),color: Colors.white);
    b1b = b1!.copyWith(fontWeight: b,color: Colors.white);

    b2 = baseStyle.copyWith(fontSize: AppDimensions.font(8),color: Colors.white);
    b2b = b2!.copyWith(fontWeight: b,color: Colors.white);

    l1 = baseStyle.copyWith(fontSize: AppDimensions.font(6),color: Colors.white);
    l1b = l1!.copyWith(fontWeight: b,color: Colors.white);

    l2 = baseStyle.copyWith(fontSize: AppDimensions.font(4),color: Colors.white);
    l2b = l2!.copyWith(fontWeight: b,color: Colors.white);
  }
}
