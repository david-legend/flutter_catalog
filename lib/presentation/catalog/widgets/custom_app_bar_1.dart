import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar1 extends StatelessWidget {
  CustomAppBar1({
    this.leadingIconData = Icons.arrow_back,
    this.leadingIconColor,
    this.leadingIconSize,
    this.trailingIconData = Icons.search,
    this.trailingIconColor,
    this.trailingIconSize,
    this.onLeadingTap,
    this.onTrailingTap,
  });

  final IconData leadingIconData;
  final Color? leadingIconColor;
  final double? leadingIconSize;
  final IconData trailingIconData;
  final Color? trailingIconColor;
  final double? trailingIconSize;
  final GestureTapCallback? onLeadingTap;
  final GestureTapCallback? onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onLeadingTap ?? () => AutoRouter.of(context).pop(),
          child: Icon(
            leadingIconData,
            size: leadingIconSize,
            color: leadingIconColor,
          ),
        ),
        InkWell(
          onTap: onTrailingTap,
          child: Icon(
            trailingIconData,
            size: trailingIconSize,
            color: trailingIconColor,
          ),
        )
      ],
    );
  }
}
