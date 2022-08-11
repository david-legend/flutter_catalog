import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class VerticalText extends StatelessWidget {
  VerticalText({
    required this.title,
    required this.subtitle,
    this.titleTextStyle,
    this.subtitleTextStyle,
  });

  final String title;
  final String subtitle;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          title,
          style: titleTextStyle ??
              theme.textTheme.headlineSmall?.copyWith(
                color: AppColors.white,
              ),
        ),
        Text(
          subtitle,
          style: subtitleTextStyle ??
              theme.textTheme.titleLarge?.copyWith(color: AppColors.purple50),
        ),
      ],
    );
  }
}
