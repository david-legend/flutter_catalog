import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class BgCard extends StatelessWidget {
  BgCard({
    this.width = Sizes.WIDTH_60,
    this.height = Sizes.HEIGHT_60,
    this.padding = const EdgeInsets.symmetric(
      horizontal: Sizes.PADDING_16,
      vertical: Sizes.PADDING_16,
    ),
    this.backgroundColor = RoamAppColors.white,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_4),
    ),
    this.shadow = Shadows.bgCardShadow,
    this.child,
  });

  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final BoxShadow shadow;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: borderRadius,
        boxShadow: [shadow],
      ),
      child: child ?? Container(),
    );
  }
}
