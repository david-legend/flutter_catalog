import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

const List<Color> buttonColors = [
  DropAppColors.accentOrangeColor,
  DropAppColors.accentDarkGreenColor,
  DropAppColors.accentYellowColor,
  DropAppColors.accentPinkColor,
  DropAppColors.accentPurpleColor,
];

class DropButton extends StatelessWidget {
  DropButton({
    this.title,
    this.onTap,
    this.height = Sizes.HEIGHT_60,
    this.width,
    this.colorWidth = Sizes.WIDTH_10,
    this.elevation = Sizes.ELEVATION_1,
    this.borderRadius = Sizes.RADIUS_24,
    this.color = DropAppColors.accentPrimaryColor,
    this.borderSide = Borders.defaultPrimaryBorder,
    this.textStyle,
    this.icon,
    this.colors = buttonColors,
    this.borderRadiusGeometry,
    this.hasIcon = false,
  });

  final GestureTapCallback onTap;
  final double height;
  final double width;
  final double colorWidth;
  final List<Color> colors;
  final double elevation;
  final double borderRadius;
  final BorderRadiusGeometry borderRadiusGeometry;
  final String title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle textStyle;
  final Widget icon;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadiusGeometry,
          color: color,
          boxShadow: [
            Shadows.containerShadow2,
          ],
        ),
        child: ClipRRect(
          borderRadius: borderRadiusGeometry,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ..._buildColors(colors),
              Spacer(),
              Text(
                title,
                style: textStyle,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildColors(List<Color> colors) {
    List<Widget> items = [];

    for (int index = 0; index < colors.length; index++) {
      items.add(
        Container(
          width: colorWidth,
          height: height,
          color: colors[index],
        ),
      );
    }
    return items;
  }
}
