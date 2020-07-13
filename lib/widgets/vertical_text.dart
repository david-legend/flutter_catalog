import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class VerticalText extends StatelessWidget {
  VerticalText({
    this.title,
    this.subtitle,
    this.titleTextStyle,
    this.subtitleTextStyle,
  });

  final String title;
  final String subtitle;
  final TextStyle titleTextStyle;
  final TextStyle subtitleTextStyle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Text(
          title,
          style: titleTextStyle ??
              theme.textTheme.headline6.copyWith(
                color: AppColors.white,
              ),
        ),
        Text(
          subtitle,
          style: subtitleTextStyle ??
              theme.textTheme.subtitle1.copyWith(color: AppColors.purple50),
        ),
      ],
    );
  }
}
