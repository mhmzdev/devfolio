
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

import '../../resources/theme/app_colors.dart';

class Button extends StatelessWidget {
  final String label;
  final Widget? icon;
  final bool haveElevation;
  final void Function()? onPressed;
  final Color? color;
  final bool isPrefixIcon;
  final bool isOutLine;
  final bool isWhiteText;
  final bool isBold;
  final bool enabled;
  final bool isLoading;
  final Color? textColor;

  const Button({
    super.key,
    required this.label,
    this.haveElevation = true,
    required this.onPressed,
    this.icon,
    this.isPrefixIcon = false,
    this.isOutLine = false,
    this.isWhiteText = true,
    this.color = const   Color(0xFFFFB700),
    this.isBold = true,
    this.enabled = true,
    this.isLoading = false,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: double.infinity,
      child: isLoading
          ? const CircularProgressIndicator()
          : SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    elevation: haveElevation && !isOutLine && enabled ? 3 : 1,
                    foregroundColor:
                        isOutLine ? color!.withOpacity(.1) : Colors.white,
                    surfaceTintColor:
                        isOutLine || !enabled ? Colors.transparent : color,
                    backgroundColor:
                        isOutLine || !enabled ? Colors.transparent : color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: isOutLine
                        ? BorderSide(
                            color: color!,
                            width: 1,
                          )
                        : BorderSide.none,
                  ),
                  child: _buildChild(context)),
            ),
    );
  }

  Widget _buildChild(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isPrefixIcon && icon != null)
          Row(
            children: [
              icon!,
            ],
          ),
        Expanded(
          child: Center(
            child: Text(
              label,
              maxLines: 1,
              style: isWhiteText
                  ? AppText.b2!.copyWith(
                      color: isOutLine ? color : null,
                      fontWeight: isBold ? FontWeight.bold : null,
                    )
                  : AppText.b2!.copyWith(
                      fontWeight: isBold ? FontWeight.bold : null,
                      color: textColor,
                    ),
            ),
          ),
        ),
        if (icon != null && !isPrefixIcon)
          Row(
            children: [
              icon!,
            ],
          )
      ],
    );
  }
}
