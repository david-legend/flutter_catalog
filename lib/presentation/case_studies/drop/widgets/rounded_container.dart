import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';


class SocialItem {
  SocialItem({required this.iconData, this.backgroundColor});

  final IconData iconData;
  final Color? backgroundColor;
}

class RoundedContainer extends StatelessWidget {
  RoundedContainer({
    this.width,
    this.height,
    this.backgroundColor = DropAppColors.accentOrangeColor,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_12,
      ),
    ),
    this.iconColor = DropAppColors.white,
    this.iconSize = Sizes.ICON_SIZE_40,
    this.iconData,
    this.border,
    this.icon,
  }) : assert((icon == null && iconData != null) || (icon != null && iconData == null));

  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color iconColor;
  final BorderRadiusGeometry borderRadius;
  final double iconSize;
  final IconData? iconData;
  final Border? border;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    double widthOfSocialContainer =
        width ?? assignWidth(context: context, fraction: 0.3);
    double heightOfSocialContainer =
        height ?? assignHeight(context: context, fraction: 0.1);
    return Container(
      width: widthOfSocialContainer,
      height: heightOfSocialContainer,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
        border: border,
      ),
      child: icon ??
          Icon(
            iconData,
            color: iconColor,
            size: iconSize,
          ),
    );
  }
}
