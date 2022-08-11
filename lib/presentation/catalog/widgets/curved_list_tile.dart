import 'package:flutter/material.dart';

import 'curved_container.dart';

class PostListTileItem {
  PostListTileItem({
    required this.height,
    this.spacerHeight,
    this.topMargin,
    this.headerSubtitleColor,
    this.headerTitleColor,
    required this.headerSubTitle,
    required this.headerTitle,
    required this.profileImagePath,
    this.bodyTextColor,
    this.backgroundColor,
    required this.body,
  });

  final double height;
  final double? spacerHeight;
  final double? topMargin;
  final Color? backgroundColor;
  final Color? bodyTextColor;
  final String profileImagePath;
  final String headerTitle;
  final Color? headerTitleColor;
  final String headerSubTitle;
  final Color? headerSubtitleColor;
  final Widget body;
}

class CurvedListTile extends StatelessWidget {
  CurvedListTile({
    this.height = 200,
    this.backgroundColor,
    this.borderRadius,
    this.decoration,
    required this.child,
  });

  final double height;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final BoxDecoration? decoration;
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
