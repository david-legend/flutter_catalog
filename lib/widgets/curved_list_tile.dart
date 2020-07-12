import 'package:flutter/material.dart';

import 'curved_container.dart';

class CurvedListTile extends StatelessWidget {
  CurvedListTile({
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.decoration,
    this.child,
  });

  final double height;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final BoxDecoration decoration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedContainer(
      height: height,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      decoration: decoration,
      child: Column(
        children: [
          Container(
            height: height / 2,
          ),
          child
        ],
      ),
    );
  }
}
