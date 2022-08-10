import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';


class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    this.title,
    this.hasLeading = true,
    this.hasTrailing = true,
    this.hasTitle = false,
    this.onActionTap,
    this.color = Colors.transparent,
    this.trailing,
    this.leadingColor,
    this.trailingColor,
    this.leading,
    this.onLeadingTap,
  }) : assert((hasTitle == false && title == null) ||
      (hasTitle == true && title != null));

  final GestureTapCallback? onLeadingTap;
  final GestureTapCallback? onActionTap;
  final List<Widget>? trailing;
  final Widget? leading;
  final Color color;
  final Color? leadingColor;
  final Color? trailingColor;
  final bool hasLeading;
  final bool hasTrailing;
  final bool hasTitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
      elevation: 0.0,
      backgroundColor: color,
      leading: hasLeading ? (leading ?? defaultLeading(context)) : null,
      centerTitle: true,
      title: hasTitle
          ? Text(
        title!,
        style: theme.textTheme.titleLarge,
      )
          : null,
      actions: hasTrailing ? (trailing ?? defaultTrailing()) : null,
    );
  }

  List<Widget> defaultTrailing() {
    return <Widget>[
      InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(right: Sizes.PADDING_16),
          child: Icon(
            Icons.search,
            color: trailingColor,
          ),
        ),
      )
    ];
  }

  Widget defaultLeading(BuildContext context) {
    return InkWell(
      onTap: onLeadingTap ??
              () {
            AutoRouter.of(context).pop();
          },
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.PADDING_16),
        child: Icon(
          Icons.arrow_back_ios,
          color: leadingColor ?? DropAppColors.primaryText,
        ),
      ),
    );
  }
}
