import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class SheetItemData {
  SheetItemData({
    this.height,
    this.title,
    this.hasTitle = true,
    this.content,
    this.hasContent = true,
    this.action,
    this.hasAction = true,
    this.borderRadius,
    this.onActionTap,
  });

  final double height;
  final String title;
  final bool hasTitle;
  final String content;
  final bool hasContent;
  final String action;
  final bool hasAction;
  final BorderRadiusGeometry borderRadius;
  final GestureTapCallback onActionTap;
}

class SheetItem extends StatelessWidget {
  SheetItem({
    this.height,
    this.title,
    this.hasTitle = true,
    this.content,
    this.hasContent = true,
    this.action,
    this.hasAction = true,
    this.backgroundColor = Colors.white,
    this.shadow = Shadows.containerShadow2,
    this.borderRadius,
    this.contentTextStyle,
    this.titleTextStyle,
    this.actionTextStyle,
    this.onActionTap,
  });

  final double height;
  final String title;
  final bool hasTitle;
  final String content;
  final bool hasContent;
  final String action;
  final bool hasAction;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final BoxShadow shadow;
  final TextStyle actionTextStyle;
  final TextStyle contentTextStyle;
  final TextStyle titleTextStyle;
  final GestureTapCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle titleStyle = theme.textTheme.headline6;
    TextStyle contentStyle = theme.textTheme.bodyText1.copyWith(
      color: AppColors.purple100,
    );
    TextStyle actionStyle = theme.textTheme.subtitle1.copyWith(
      color: AppColors.violet400,
    );

    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ??
            BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.RADIUS_60),
              topLeft: Radius.circular(Sizes.RADIUS_60),
            ),
        color: backgroundColor,
        boxShadow: [shadow],
      ),
      child: Column(
        children: [
          SpaceH8(),
          hasTitle
              ? Text(
                  title,
                  style: titleTextStyle ?? titleStyle,
                )
              : Spacer(),
          hasTitle ? SpaceH8() : Container(),
          hasContent
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.PADDING_32,
                  ),
                  child: Text(content, style: contentTextStyle ?? contentStyle),
                )
              : Spacer(),
          hasContent ? SpaceH12() : Container(),
          hasAction
              ? InkWell(
                  onTap: onActionTap,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(action.toUpperCase(),
                        style: actionTextStyle ?? actionStyle),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
