import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class CurvedAppBar extends StatelessWidget {
  CurvedAppBar({
    this.title,
    this.height,
    this.borderRadius,
    this.leading,
    this.trailing,
    this.onLeadingTap,
    this.onTrailingTap,
    this.hasLeading = true,
    this.hasTrailing = false,
    this.backgroundColor = AppColors.primaryColor,
  });

  final String title;
  final double height;
  final Widget leading;
  final Widget trailing;
  final GestureTapCallback onLeadingTap;
  final GestureTapCallback onTrailingTap;
  final bool hasLeading;
  final bool hasTrailing;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: height ?? assignHeight(context: context, fraction: 0.15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius ??
            BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.RADIUS_60),
            ),
      ),
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
          SpaceH4(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title ?? '',
                style: theme.textTheme.headline6,
              )
            ],
          ),
        ],
      ),
    );
  }

  @widget
  Widget defaultLeading() {
    return InkWell(
      onTap: () {},
      child: Icon(Icons.arrow_back),
    );
  }

  @widget
  Widget defaultTrailing() {
    return InkWell(
      onTap: () {},
      child: Icon(Icons.search),
    );
  }
}
