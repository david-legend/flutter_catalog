import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';


class CustomButton extends StatelessWidget {
  CustomButton({
    this.title,
    this.onPressed,
    this.height = Sizes.HEIGHT_50,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = DropAppColors.accentPrimaryColor,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.textStyle,
    this.icon,
    this.borderRadiusGeometry,
    this.hasIcon = false,
  });

  final VoidCallback? onPressed;
  final double height;
  final double elevation;
  final double borderRadius;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final String? title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle? textStyle;
  final Widget? icon;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius:
        borderRadiusGeometry ?? BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon != null ? icon! : Container(),
          icon != null ? SpaceW8() : Container(),
          title != null
              ? Text(
            title!,
            style: textStyle,
          )
              : Container(
            width: 0,
            height: 0,
          ),
        ],
      ),
    );
  }
}
