import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

import 'action_icon.dart';

class CurvedPostCard extends StatelessWidget {
  CurvedPostCard({
    this.spacerHeight,
    this.borderRadius,
    this.height,
    this.bodyText = StringConst.LOREM_IPSUM,
    this.body,
    this.hasFooter = true,
    this.padding = const EdgeInsets.symmetric(
      horizontal: Sizes.PADDING_24,
      vertical: Sizes.PADDING_24,
    ),
    this.footer,
    this.shadow = Shadows.containerShadow,
  });

  final double spacerHeight;
  final BorderRadiusGeometry borderRadius;
  final double height;
  final String bodyText;
  final bool hasFooter;
  final EdgeInsetsGeometry padding;
  final Widget body;
  final Widget footer;
  final BoxShadow shadow;

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
        boxShadow: [shadow],
      ),
      child: Column(
        children: [
          Container(height: spacerHeight) ?? Container(),
          body ??
              Padding(
                padding: padding,
                child: Text(bodyText),
              ),
          hasFooter
              ? (footer ?? Padding(padding: padding, child: _buildFooter()))
              : Container(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Icon(FeatherIcons.share2, color: AppColors.grey),
        ),
        Spacer(),
        ActionIcon(
          onTap: () {},
          title: StringConst.NUMBER_OF_COMMENTS,
          iconData: FeatherIcons.messageSquare,
          isHorizontal: true,
//          color: iconColor,
//          titleStyle: iconTextStyle,
        ),
        SpaceW16(),
        ActionIcon(
          onTap: () {},
          title: StringConst.NUMBER_OF_LIKES,
          iconData: FeatherIcons.heart,
          isHorizontal: true,
//          color: iconColor,
//          titleStyle: iconTextStyle,
        ),
      ],
    );
  }
}
