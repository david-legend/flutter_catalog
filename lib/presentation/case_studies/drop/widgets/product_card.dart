import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/selectable_container.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/values/values.dart';

class ProductItem {
  ProductItem({
    required this.title,
    required this.price,
    required this.imagePath,
    required this.images,
    required this.sizes,
    required this.tag,
  });

  final String title;
  final String tag;
  final String price;
  final String imagePath;
  final List<String> images;
  final List<SelectorModel> sizes;
}

class ProductCard extends StatelessWidget {
  ProductCard({
    required this.title,
    required this.price,
    required this.imagePath,
    this.icon = FeatherIcons.heart,
    this.backgroundColor = DropAppColors.secondaryColor,
    this.borderRadius = const BorderRadius.only(
      topLeft: const Radius.circular(Sizes.RADIUS_40),
      bottomLeft: const Radius.circular(Sizes.RADIUS_40),
    ),
    this.onTap,
  });

  final String title;
  final String price;
  final String imagePath;
  final IconData icon;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: Sizes.HEIGHT_288,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: Sizes.PADDING_16,
                right: Sizes.PADDING_24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    icon,
                    size: Sizes.ICON_SIZE_16,
                    color: DropAppColors.primaryColor,
                  ),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                imagePath,
                width: Sizes.WIDTH_200,
                height: Sizes.HEIGHT_200,
                fit: BoxFit.cover,
              ),
            ),
            SpaceH8(),
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.PADDING_24,
                right: Sizes.PADDING_24,
                bottom: Sizes.PADDING_20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: Sizes.TEXT_SIZE_20,
                    ),
                  ),
                  Text(
                    "$price ${DropStringConst.CURRENCY}",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}