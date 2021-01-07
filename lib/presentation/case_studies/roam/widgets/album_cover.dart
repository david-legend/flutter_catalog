import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

const double kHorizontalPadding = Sizes.PADDING_24;

class AlbumCoverItem {
  AlbumCoverItem({
    @required this.title,
    @required this.imagePath,
    this.width = 1.0,
    this.spacing = 0.0,
  });

  final String title;
  final String imagePath;
  final double width;
  final double spacing;
}

class AlbumCover extends StatelessWidget {
  AlbumCover({
    this.title,
    this.imagePath,
    this.width,
    this.height,
    this.horizontalPadding = (kHorizontalPadding * 2),
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_4,
      ),
    ),
  });

  final String title;
  final String imagePath;
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCover = width ?? assignWidth(context: context, fraction: 1);
    double heightOfCover =
        height ?? assignHeight(context: context, fraction: 0.2);
    return Container(
      width: widthOfCover,
      height: heightOfCover,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: Image.asset(
              imagePath,
              width: widthOfCover,
              height: heightOfCover,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: widthOfCover,
            height: heightOfCover,
            decoration: BoxDecoration(
              color: RoamAppColors.black10,
              borderRadius: borderRadius,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: Sizes.PADDING_16,
              right: Sizes.PADDING_16,
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                title,
                style: theme.textTheme.subtitle2.copyWith(
                  color: RoamAppColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
