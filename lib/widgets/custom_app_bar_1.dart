import 'package:flutter/material.dart';

class CustomAppBar1 extends StatelessWidget {
  CustomAppBar1({
    this.leading,
    this.trailing,
    this.leadingIconData = Icons.arrow_back,
    this.leadingIconColor,
    this.leadingIconSize,
    this.trailingIconData = Icons.search,
    this.trailingIconColor,
    this.trailingIconSize,
  });

  final Widget leading;
  final Widget trailing;
  final IconData leadingIconData;
  final Color leadingIconColor;
  final double leadingIconSize;
  final IconData trailingIconData;
  final Color trailingIconColor;
  final double trailingIconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            leadingIconData,
            size: leadingIconSize,
            color: leadingIconColor,
          ),
        ),
        InkWell(
          onTap: () {},
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
