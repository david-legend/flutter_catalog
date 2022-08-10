import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class TagItem {
  final String tag;
  final Color? backgroundColor;
  final Color? textColor;

  TagItem({
    required this.tag,
    this.textColor,
    this.backgroundColor,
  });
}

class Tag extends StatelessWidget {
  Tag({
    required this.tagName,
    this.width,
    this.height = Sizes.HEIGHT_24,
    this.textColor = RoamAppColors.secondaryColor,
    this.backgroundColor = RoamAppColors.lightGreen50,
    this.padding,
    this.tagTextStyle,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_4),
    ),
  });

  final String tagName;
  final double? width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? tagTextStyle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.PADDING_4,
        vertical: (height / 6),
      ),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          tagName,
          style: tagTextStyle ??
              theme.textTheme.titleMedium?.copyWith(
                color: textColor,
                fontSize: Sizes.TEXT_SIZE_12,
              ),
        ),
      ),
    );
  }
}
