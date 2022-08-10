import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class CustomButton2 extends StatelessWidget {
  CustomButton2({
    this.onPressed,
    this.height = Sizes.HEIGHT_56,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = RoamAppColors.accentColor,
    this.iconColor = RoamAppColors.white,
    this.iconSize,
    this.borderSide = Borders.defaultPrimaryBorder,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final double height;
  final double elevation;
  final double borderRadius;
  final Color color;
  final Color? iconColor;
  final double? iconSize;
  final BorderSide borderSide;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
      height: height,
      color: color,
      child: Center(
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
