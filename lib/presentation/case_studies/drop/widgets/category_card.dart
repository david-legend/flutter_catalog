import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

const double kPaddingHorizontal = Sizes.PADDING_16;

class CategoryItem {
  CategoryItem({
    @required this.title,
    @required this.imagePath,
    this.subtitle,
    this.subtitleColor,
  });

  final String title;
  final String subtitle;
  final Color subtitleColor;
  final String imagePath;
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    this.title,
    this.subtitle = "0",
    this.width = Sizes.WIDTH_200,
    this.height = Sizes.HEIGHT_200,
    this.subtitleColor = DropAppColors.accentOrangeColor,
    this.imagePath,
    this.backgroundColor = DropAppColors.secondaryColor,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_30),
    ),
    this.onTap,
  });

  final String title;
  final String subtitle;
  final double width;
  final double height;
  final Color subtitleColor;
  final String imagePath;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: borderRadius,
              ),
              width: width,
              height: height,
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SpaceH8(),
            Row(
              children: [
                Text(
                  title,
                  style: theme.textTheme.subtitle1,
                ),
                SpaceW4(),
                Text(
                  "($subtitle)",
                  style:
                      theme.textTheme.subtitle2.copyWith(color: subtitleColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
