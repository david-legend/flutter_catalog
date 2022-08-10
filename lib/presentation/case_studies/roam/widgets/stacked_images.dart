import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

const double kWidth = Sizes.WIDTH_24;
const double kHeight = Sizes.HEIGHT_24;
const double kOffset = kWidth / 2;

class StackedImages extends StatelessWidget {
  StackedImages({
    required this.images,
    this.hasMoreImages = true,
    this.extraImagesLength =0,
    this.width,
    this.widthOfImageItem = kWidth,
    this.heightOfImageItem = kHeight,
    this.offset = kOffset,
    this.color = RoamAppColors.secondaryColor,
    this.textColor = RoamAppColors.white,
    this.textSize,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_20,
      ),
    ),
  });

  final List<String> images;
  final BorderRadius? borderRadius;
  final bool hasMoreImages;
  final int extraImagesLength;
  final double? width;
  final double widthOfImageItem;
  final double heightOfImageItem;
  final double offset;
  final Color color;
  final Color textColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Stack(
        children: _buildStackedImages(context, images),
      ),
    );
  }

  List<Widget> _buildStackedImages(BuildContext context, List<String> images) {
    ThemeData theme = Theme.of(context);

    List<Widget> items = [];

    for (int index = 0; index < images.length; index++) {
      items.add(
        Container(
          width: widthOfImageItem,
          height: heightOfImageItem,
          margin: EdgeInsets.only(left: (offset * index)),
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: Sizes.WIDTH_2,
            ),
            borderRadius: borderRadius,
          ),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Image.asset(
              images[index],
              width: widthOfImageItem,
              height: heightOfImageItem,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    hasMoreImages
        ? items.add(
      Container(
        width: widthOfImageItem,
        height: heightOfImageItem,
        margin: EdgeInsets.only(left: (offset * items.length)),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Text(
            "+$extraImagesLength",
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleLarge?.copyWith(
              color: textColor,
              fontSize: (textSize) ??
                  ("+$extraImagesLength".length >= 4
                      ? Sizes.TEXT_SIZE_8
                      : Sizes.TEXT_SIZE_10),
            ),
          ),
        ),
      ),
    )
        : Container();
    return items;
  }
}
