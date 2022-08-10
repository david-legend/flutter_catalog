import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class DiscoverCard extends StatelessWidget {
  DiscoverCard({
    this.icon,
    this.color,
    this.iconSize,
    required this.title,
    this.hasIcon = false,
    this.titleStyle,
    this.backgroundColor,
    this.height,
    this.width,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_12),
    ),
    this.onTap,
    this.child,
  }) : assert((hasIcon == false && child != null) ||
      ((hasIcon == true && icon != null)));

  final IconData? icon;
  final bool hasIcon;
  final Color? color;
  final double? iconSize;
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final BorderRadiusGeometry borderRadius;
  final GestureTapCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 0.3);
    double heightOfCard = assignHeight(context: context, fraction: 0.125);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? widthOfCard,
        height: height ?? heightOfCard,
        decoration:
        BoxDecoration(color: backgroundColor, borderRadius: borderRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon ? Icon(icon, size: iconSize, color: color) : child!,
            SpaceH8(),
            Text(
              title,
              style: titleStyle ??
                  theme.textTheme.titleMedium?.copyWith(
                    color: color,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
