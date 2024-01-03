import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folio/extensions/context_extensions.dart';
import 'package:folio/resources/app_spaces.dart';
import 'package:folio/shared_widgets/validations.dart';


class BaseTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextAlign textAlign;
  final Function()? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? icon;
  final Widget? suffixIcon;
  final String? label;
  final String? hint;
  final int maxLines;
  final bool isWhiteText;
  final String? ignoringMessage;
  final String? Function(String?)? validator;
  final bool isObscure;
  final bool isRequired;
  final String? initialValue;
  final bool enabled;
  final bool readOnly;
  final bool unFocus;
  final String? title;

  const BaseTextField(
      {super.key,
        this.ignoringMessage,
        this.focusNode,
        this.controller,
        this.isObscure = false,
        this.unFocus = true,
        this.onTap,
        this.hint,
        this.icon,
        this.suffixIcon,
        this.label,
        this.onChanged,
        this.onSubmitted,
        this.initialValue,
        this.textAlign = TextAlign.start,
        this.contentPadding = const EdgeInsets.all(12),
        this.textInputType = TextInputType.text,
        this.maxLines = 1,
        this.isWhiteText = true,
        this.isRequired = true,
        this.enabled = true,
        this.readOnly = false,
        this.validator,
        this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: context.subTitle,
          ),
          context.smallGap,
        ],

        //! Text Field
        _textField(context),
      ],
    );
  }

  Widget _textField(BuildContext context) {
    String? validations(value) {
      if (textInputType == TextInputType.number) {
        return Validations.numbersOnly(value);
      } else if (textInputType == TextInputType.emailAddress) {
        return Validations.email(value);
      } else if (textInputType == TextInputType.phone) {
        return Validations.phoneNumber(value);
      }

      return Validations.mustBeNotEmpty(value);
    }

    return TextFormField(
      scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom +
              12),
      style: isWhiteText ? context.whiteLabelLarge : null,
      onTapOutside: (e) => unFocus ? FocusScope.of(context).unfocus() : null,
      focusNode: focusNode,
      obscureText: isObscure,
      enabled: enabled,
      readOnly: readOnly,
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: [
        if (textInputType == TextInputType.number)
          FilteringTextInputFormatter.allow(RegExp(r'[0-9.-]'))
      ],
      textAlign: textAlign,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      initialValue: initialValue,
      maxLines: maxLines,
      validator: isRequired ? (validator ?? validations) : null,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.greyLabelMedium,
        labelStyle: isWhiteText ? context.whiteLabelLarge : context.labelLarge,
        contentPadding: contentPadding,
        labelText: label,
        suffixIcon: suffixIcon,
        prefixIcon: icon != null
            ? Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.mediumPadding,
              vertical: AppSpaces.smallPadding),
          child: icon,
        )
            : null,
      ),
    );
  }
}

