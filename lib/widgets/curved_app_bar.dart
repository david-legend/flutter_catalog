import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_container.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class CurvedAppBar extends StatelessWidget {
  CurvedAppBar({
    this.height,
    this.borderRadius,
    this.iconColor,
    this.iconSize = Sizes.SIZE_24,
    this.leadingIcon = Icons.arrow_back,
    this.trailingIcon = Icons.search,
    this.leading,
    this.trailing,
    this.onLeadingTap,
    this.onTrailingTap,
    this.hasLeading = true,
    this.hasTrailing = false,
    this.backgroundColor = AppColors.primaryColor,
    this.margin,
    this.decoration,
    this.topLeftRadius = Sizes.RADIUS_0,
    this.topRightRadius = Sizes.RADIUS_0,
    this.bottomRightRadius = Sizes.RADIUS_0,
    this.bottomLeftRadius = Sizes.RADIUS_0,
    this.title,
  });

  final double height;
  final Widget leading;
  final Widget trailing;
  final GestureTapCallback onLeadingTap;
  final GestureTapCallback onTrailingTap;
  final bool hasLeading;
  final bool hasTrailing;
  final Color backgroundColor;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color iconColor;
  final double iconSize;
  final BorderRadiusGeometry borderRadius;
  final BoxDecoration decoration;
  final EdgeInsetsGeometry margin;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomRightRadius;
  final double bottomLeftRadius;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CurvedContainer(
      margin: margin,
      height: height ?? assignHeight(context: context, fraction: 0.15),
      decoration: decoration,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      topLeftRadius: topLeftRadius,
      topRightRadius: topRightRadius,
      bottomLeftRadius: bottomLeftRadius,
      bottomRightRadius: bottomRightRadius,
      child: Column(
        children: [
          (hasLeading == false && hasTrailing == false)
              ? Spacer()
              : Container(
                  padding: EdgeInsets.only(
                    left: Sizes.PADDING_16,
                    right: Sizes.PADDING_16,
                    top: Sizes.SAFE_AREA_MARGIN + Sizes.PADDING_8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hasLeading ? (leading ?? defaultLeading()) : Spacer(),
                      hasTrailing
                          ? (trailing ?? defaultTrailing())
                          : Container(),
                    ],
                  ),
                ),
          title ?? Container(),
        ],
      ),
    );
  }

  @widget
  Widget defaultLeading() {
    return InkWell(
      onTap: () {},
      child: Icon(
        leadingIcon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }

  @widget
  Widget defaultTrailing() {
    return InkWell(
      onTap: () {},
      child: Icon(
        trailingIcon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
