import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class CurvedContainer extends StatelessWidget {
  CurvedContainer({
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.decoration,
    this.child,
    this.margin,
  });

  final double height;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final BoxDecoration decoration;
  final Widget child;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? assignHeight(context: context, fraction: 0.15),
      decoration: decoration ??
          BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius ??
                BorderRadius.only(
                  bottomLeft: Radius.circular(Sizes.RADIUS_60),
                ),
          ),
      child: child,
    );
  }
}
