import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

import 'empty.dart';

const double kSidePadding = Sizes.PADDING_24;
const double kSpacing = Sizes.PADDING_16;

class InterestCard extends StatefulWidget {
  InterestCard({
    required this.title,
    required this.imagePath,
    this.width,
    this.height,
    this.padding = ((kSidePadding * 2) + kSpacing),
    this.titleStyle,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_12),
    ),
    this.iconData = Icons.done,
    this.isSelected = false,
    this.titleTopOffset,
  });

  final String title;
  final TextStyle? titleStyle;
  final double? width;
  final double? height;
  final double padding;
  final String imagePath;
  final BorderRadius? borderRadius;
  final IconData iconData;
  final bool isSelected;
  final double? titleTopOffset;

  @override
  _InterestCardState createState() => _InterestCardState();
}

class _InterestCardState extends State<InterestCard> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double totalPadding = (2 * kSidePadding) + kSpacing;
    double widthOfScreen =
        assignWidth(context: context, fraction: 1) - totalPadding;

    double defaultWidthOfImage = widthOfScreen / 2;
    double defaultHeightOfImage = assignHeight(context: context, fraction: 0.2);
    double widthOfSelectedCircle = Sizes.SIZE_40;

    return InkWell(
      onTap: () => _flipSelectedState(),
      child: Container(
        width: widget.width ?? defaultWidthOfImage,
        height: widget.height ?? defaultHeightOfImage,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: widget.borderRadius,
              child: Image.asset(
                widget.imagePath,
                width: widget.width ?? defaultWidthOfImage,
                height: widget.height ?? defaultHeightOfImage,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: widget.titleTopOffset ?? (defaultHeightOfImage * 0.75),
              left: Sizes.SIZE_16,
              child: Text(
                widget.title,
                style: widget.titleStyle ??
                    theme.textTheme.titleLarge?.copyWith(
                      color: RoamAppColors.white,
                    ),
              ),
            ),
            isSelected
                ? Positioned(
              left: (widget.width ?? defaultWidthOfImage) -
                  widthOfSelectedCircle,
              child: Container(
                width: widthOfSelectedCircle,
                height: widthOfSelectedCircle,
                decoration: BoxDecoration(
                  color: RoamAppColors.accentColor,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(Sizes.RADIUS_60),
                  ),
                ),
                child: Icon(
                  widget.iconData,
                  color: RoamAppColors.white,
                ),
              ),
            )
                : Empty(),
          ],
        ),
      ),
    );
  }

  void _flipSelectedState() {
    setState(() {
      isSelected = !isSelected;
    });
  }
}
