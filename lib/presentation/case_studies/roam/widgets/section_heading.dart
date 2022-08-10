import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

import 'empty.dart';

class SectionHeading extends StatelessWidget {
  SectionHeading({
    required this.title1,
    this.title2,
    this.title1TextStyle,
    this.title2TextStyle,
    this.hasTitle2 = true,
  }) : assert((hasTitle2 && title2 != null) || (!hasTitle2 && title2 == null));

  final String title1;
  final String? title2;
  final TextStyle? title1TextStyle;
  final TextStyle? title2TextStyle;
  final bool hasTitle2;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: title1TextStyle ??
              theme.textTheme.headlineSmall?.copyWith(
                color: RoamAppColors.black50,
              ),
        ),
        hasTitle2
            ? Text(
          title2!,
          style: title2TextStyle ??
              theme.textTheme.bodyMedium?.copyWith(
                color: RoamAppColors.grey200,
              ),
        )
            : Empty(),
      ],
    );
  }
}
