import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class CurvedPostCard extends StatelessWidget {
  CurvedPostCard({
    this.spacerHeight,
    this.borderRadius,
    this.height,
  });

  final double spacerHeight;
  final BorderRadiusGeometry borderRadius;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ??
            BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.RADIUS_60),
            ),
        color: Colors.white,
        boxShadow: [Shadows.containerShadow],
      ),
      child: Column(
        children: [
          Container(
                height: spacerHeight,
              ) ??
              Container(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.PADDING_24,
              vertical: Sizes.PADDING_24,
            ),
            child: Text(StringConst.LOREM_IPSUM),
          ),
        ],
      ),
    );
  }
}
