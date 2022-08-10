import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

import 'drop_logo.dart';
import 'fliter_bottom_sheet.dart';

import 'drop_logo.dart';
import 'fliter_bottom_sheet.dart';

class DropMenuItem {
  DropMenuItem({required this.title, this.textColor, this.route});

  final String title;
  final Color? textColor;
  final PageRouteInfo? route;
}

class DropAppBar extends StatelessWidget {
  DropAppBar({
    this.leading,
    this.onLeadingTap,
  });

  final Widget? leading;
  final GestureTapCallback? onLeadingTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onLeadingTap,
            child: leading ??
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropLogo(
                      width: 30,
                      height: 30,
                    ),
                    SpaceH8(),
                    PanCakeIcon(),
                  ],
                ),
          ),
          TrailingIcons(),
        ],
      ),
    );
  }
}

class PanCakeIcon extends StatelessWidget {
  PanCakeIcon({
    this.width = 30,
    this.height = 3,
    this.color = DropAppColors.primaryColor,
    this.borderRadius = const BorderRadius.all(const Radius.circular(20)),
  });

  final double width;
  final double height;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
          ),
          SpaceH4(),
          Container(
            width: width * 0.65,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
          ),
        ],
      ),
    );
  }
}

class TrailingIcons extends StatelessWidget {
  TrailingIcons({this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    Radius borderRadius = const Radius.circular(Sizes.RADIUS_30);
    double widthOfTrailIcons =
        width ?? assignWidth(context: context, fraction: 0.6);
    double heightOfTrailIcons =
        height ?? assignHeight(context: context, fraction: 0.1);
    return Container(
      width: widthOfTrailIcons,
      height: heightOfTrailIcons,
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.PADDING_8,
        vertical: Sizes.PADDING_8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: DropAppColors.secondaryColor,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: const Radius.circular(
            Sizes.RADIUS_60,
          ),
          bottomLeft: const Radius.circular(
            Sizes.RADIUS_60,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            FeatherIcons.search,
            color: DropAppColors.accentPinkColor,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: borderRadius,
                    topRight: borderRadius,
                  ),
                ),
                builder: (_) => FilterBottomSheet(
                  brands: DropData.brands,
                  colors: DropData.colors,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(Sizes.PADDING_8),
              child: Icon(
                FeatherIcons.sliders,
                color: DropAppColors.accentYellowColor,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              AutoRouter.of(context).push(CheckOutScreenRoute());
            },
            child: Container(
              padding: EdgeInsets.all(Sizes.PADDING_8),
              decoration: BoxDecoration(
                color: DropAppColors.primaryColor,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(
                    Sizes.RADIUS_8,
                  ),
                ),
              ),
              child: Icon(
                FeatherIcons.shoppingBag,
                size: Sizes.ICON_SIZE_18,
                color: DropAppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
