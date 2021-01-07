import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class CurvedButton extends StatelessWidget {
  CurvedButton({
    @required this.title,
    this.style,
    this.width,
    this.height,
    this.decoration,
    this.borderRadius,
    this.onTap,
    this.color = AppColors.primaryColor,
  }) : assert(title != null);

  final double width;
  final double height;
  final double borderRadius;
  final BoxDecoration decoration;
  final Color color;
  final String title;
  final TextStyle style;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? assignWidth(context: context, fraction: 0.3),
        height: height ?? assignHeight(context: context, fraction: 0.07),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ??
              BorderRadius.only(
                topRight: Radius.circular(Sizes.RADIUS_40),
                bottomLeft: Radius.circular(Sizes.RADIUS_40),
              ),
        ),
        child: Center(
          child: Text(
            title,
            style: style ??
                theme.textTheme.subtitle1.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
      ),
    );
  }
}
