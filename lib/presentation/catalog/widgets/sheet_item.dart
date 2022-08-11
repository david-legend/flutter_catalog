import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

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

  final double? height;
  final String? title;
  final bool hasTitle;
  final String? content;
  final bool hasContent;
  final String? action;
  final bool hasAction;
  final BorderRadiusGeometry? borderRadius;
  final GestureTapCallback? onActionTap;
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
  })  : assert((!hasTitle && title == null) || (hasTitle && title != null)),
        assert((!hasContent && content == null) ||
            (hasContent && content != null)),
        assert((!hasAction && action == null) || (hasAction && action != null));

  final double? height;
  final String? title;
  final bool hasTitle;
  final String? content;
  final bool hasContent;
  final String? action;
  final bool hasAction;
  final BorderRadiusGeometry? borderRadius;
  final Color backgroundColor;
  final BoxShadow shadow;
  final TextStyle? actionTextStyle;
  final TextStyle? contentTextStyle;
  final TextStyle? titleTextStyle;
  final GestureTapCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? titleStyle = theme.textTheme.headlineSmall;
    TextStyle? contentStyle = theme.textTheme.bodyLarge?.copyWith(
      color: AppColors.purple100,
    );
    TextStyle? actionStyle = theme.textTheme.titleLarge?.copyWith(
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
                  title!,
                  style: titleTextStyle ?? titleStyle,
                )
              : Spacer(),
          hasTitle ? SpaceH8() : Container(),
          hasContent
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.PADDING_32,
                  ),
                  child:
                      Text(content!, style: contentTextStyle ?? contentStyle),
                )
              : Spacer(),
          hasContent ? SpaceH12() : Container(),
          hasAction
              ? InkWell(
                  onTap: onActionTap,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(action!.toUpperCase(),
                        style: actionTextStyle ?? actionStyle),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
