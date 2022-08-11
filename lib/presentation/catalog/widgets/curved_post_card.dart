import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

import 'action_icon.dart';

class PostItem {
  PostItem({
    required this.height,
     this.body,
    this.hasHeader = false,
    this.hasFooter = true,
    this.topMargin = 0.0,
    this.backgroundColor = AppColors.white,
    this.bodyTextColor = AppColors.black,
    this.footerIconColor = AppColors.grey,
     this.profileImagePath,
     this.headerSubTitle,
     this.headerTitle,
    this.headerTitleColor = AppColors.white,
    this.headerSubtitleColor = AppColors.white,
  });

  final double height;
  final double topMargin;
  final bool hasHeader;
  final bool hasFooter;
  final Color backgroundColor;
  final Color bodyTextColor;
  final Color footerIconColor;
  final String? profileImagePath;
  final String? headerTitle;
  final Color headerTitleColor;
  final String? headerSubTitle;
  final Color headerSubtitleColor;
  final Widget? body;
}

class CurvedPostCard extends StatelessWidget {
  CurvedPostCard({
    this.spacerHeight,
    this.borderRadius,
    this.height,
    this.bodyText = StringConst.LOREM_IPSUM,
    this.body,
    this.hasFooter = true,
    this.hasHeader = false,
    this.padding = const EdgeInsets.symmetric(
      horizontal: Sizes.PADDING_24,
      vertical: Sizes.PADDING_24,
    ),
    this.footer,
    this.backgroundColor = Colors.white,
    this.shadow = Shadows.containerShadow,
    this.bodyTextColor = AppColors.black,
    this.footerIconColor = AppColors.grey,
    this.headerMainAxisAlignment = MainAxisAlignment.start,
     this.profileImagePath,
     this.headerTitle,
    this.headerTitleColor = AppColors.white,
     this.headerSubTitle,
    this.headerSubtitleColor = AppColors.white,
    this.headerTitleStyle,
    this.headerSubtitleStyle,
  });

  final double? spacerHeight;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final String bodyText;
  final bool hasFooter;
  final bool hasHeader;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final Color bodyTextColor;
  final Color footerIconColor;
  final Widget? body;
  final Widget? footer;
  final MainAxisAlignment headerMainAxisAlignment;
  final String? profileImagePath;
  final String? headerTitle;
  final Color headerTitleColor;
  final String? headerSubTitle;
  final Color headerSubtitleColor;
  final TextStyle? headerTitleStyle;
  final TextStyle? headerSubtitleStyle;
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
        color: backgroundColor,
        boxShadow: [shadow],
      ),
      child: Column(
        children: [
          Container(height: spacerHeight ?? 0),
          hasHeader
              ? Padding(
                  padding: padding,
                  child: _buildHeader(context),
                )
              : Container(),
          body ??
              Padding(
                padding: hasHeader
                    ? EdgeInsets.symmetric(horizontal: Sizes.MARGIN_24)
                    : padding,
                child: Text(
                  bodyText,
                  style: TextStyle(
                    color: bodyTextColor,
                  ),
                ),
              ),
          hasFooter
              ? (footer ??
                  Padding(padding: padding, child: _buildFooter(context)))
              : Container(),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: footerIconColor,
          fontSize: Sizes.TEXT_SIZE_14,
        );

    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            FeatherIcons.share2,
            color: footerIconColor,
          ),
        ),
        Spacer(),
        ActionIcon(
          onTap: () {},
          title: StringConst.NUMBER_OF_COMMENTS,
          iconData: FeatherIcons.messageSquare,
          isHorizontal: true,
          color: footerIconColor,
          titleStyle: textStyle,
        ),
        SpaceW16(),
        ActionIcon(
          onTap: () {},
          title: StringConst.NUMBER_OF_LIKES,
          iconData: FeatherIcons.heart,
          isHorizontal: true,
          color: footerIconColor,
          titleStyle: textStyle,
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: headerMainAxisAlignment,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profileImagePath!),
          minRadius: Sizes.RADIUS_20,
          maxRadius: Sizes.RADIUS_20,
        ),
        SpaceW16(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerTitle!,
              style: headerTitleStyle ??
                  theme.textTheme.titleMedium?.copyWith(
                    color: headerTitleColor,
                  ),
            ),
            Text(
              headerSubTitle!,
              style: headerSubtitleStyle ??
                  theme.textTheme.bodyLarge?.copyWith(
                    color: headerSubtitleColor,
                    fontSize: Sizes.TEXT_SIZE_14,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
