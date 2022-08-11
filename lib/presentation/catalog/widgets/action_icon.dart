import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

class ActionIcon extends StatelessWidget {
  ActionIcon({
    required this.iconData,
    this.color = AppColors.grey,
    this.title,
    this.size,
    this.hasTitle = true,
    this.isHorizontal = false,
    this.titleStyle,
    this.onTap,
  }) : assert(hasTitle == false || title != null);

  final IconData iconData;
  final double? size;
  final Color? color;
  final String? title;
  final TextStyle? titleStyle;
  final bool hasTitle;
  final bool isHorizontal;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: !isHorizontal
          ? Column(
              children: [
                Icon(
                  iconData,
                  size: size,
                  color: color,
                ),
                hasTitle ? SpaceH8() : Container(),
                hasTitle
                    ? Text(
                        title!,
                        style: titleStyle ??
                            theme.textTheme.bodyLarge?.copyWith(
                                color: AppColors.grey,
                                fontSize: Sizes.TEXT_SIZE_14),
                      )
                    : Container()
              ],
            )
          : Row(
              children: [
                hasTitle
                    ? Text(
                        title!,
                        style: titleStyle ??
                            theme.textTheme.bodyLarge?.copyWith(
                                color: AppColors.grey,
                                fontSize: Sizes.TEXT_SIZE_14),
                      )
                    : Container(),
                hasTitle ? SpaceW4() : Container(),
                Icon(
                  iconData,
                  size: size,
                  color: color,
                ),
              ],
            ),
    );
  }
}
