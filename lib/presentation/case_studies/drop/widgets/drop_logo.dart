import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

import 'drop_logo_painter.dart';

class DropLogo extends StatelessWidget {
  DropLogo({
    this.width = Sizes.WIDTH_100,
    this.height = Sizes.HEIGHT_100,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(Sizes.RADIUS_20),
      bottomLeft: Radius.circular(Sizes.RADIUS_20),
      bottomRight: Radius.circular(Sizes.RADIUS_80),
      topRight: Radius.circular(Sizes.RADIUS_80),
    ),
  });

  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CustomPaint(
          painter: DropLogoPainter(),
        ),
      ),
    );
  }
}
