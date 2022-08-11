import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercatalog/values/values.dart';

class CustomTextFormField extends StatelessWidget {
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelStyle;
  final TextStyle? titleStyle;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? title;
  final bool obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool hasTitle;
  final bool hasTitleIcon;
  final Widget? titleIcon;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;

  // final TextStyle? textFormFieldStyle;
  // final TextStyle? fieldTitleTextStyle;
  // final TextStyle? hintTextStyle;
  // final BorderStyle borderStyle;
  // final double borderRadius;
  // final double borderWidth;
  // final double contentPaddingHorizontal;
  // final double contentPaddingVertical;
  // final String? prefixIconImagePath;
  // final String? hintText;
  // final Color prefixIconColor;
  // final Color borderColor;
  // final Color focusedBorderColor;
  // final Color enabledBorderColor;
  // final Color fillColor;
  // final bool filled;
  // final bool obscured;
  // final bool hasPrefixIcon;
  // final bool hasSuffixIcon;
  // final Widget? suffixIcon;
  // final int maxLines;
  // final bool hasTitle;
  // final InputBorder? enabledBorder;
  // final InputBorder? focusedBorder;
  // final InputBorder? border;
  // final String? fieldTitle;
  CustomTextFormField({
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.titleStyle,
    this.titleIcon,
    this.hasTitleIcon = false,
    this.title,
    this.contentPadding,
    this.textFormFieldMargin,
    this.hasTitle = false,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
    this.controller,
  })  : assert((hasTitle && title != null) || (!hasTitle && title == null)),
        assert((hasTitleIcon && titleIcon != null) ||
            (!hasTitleIcon && titleIcon == null));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            hasTitleIcon ? titleIcon! : Container(),
            hasTitle ? Text(title!, style: titleStyle) : Container(),
          ],
        ),
        Container(
          width: width,
          height: height,
          margin: textFormFieldMargin,
          child: TextFormField(
            style: textStyle,
            controller: controller,
            keyboardType: textInputType,
            onChanged: onChanged,
            validator: validator,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              contentPadding: contentPadding,
              labelText: labelText,
              labelStyle: labelStyle,
              border: border,
              enabledBorder: enabledBorder,
              focusedBorder: focusedBorder,
              prefixIcon: hasPrefixIcon ? prefixIcon : null,
              suffixIcon: hasSuffixIcon ? suffixIcon : null,
              hintText: hintText,
              hintStyle: hintTextStyle,
            ),
            obscureText: obscured,
          ),
        ),
      ],
    );
  }
}
