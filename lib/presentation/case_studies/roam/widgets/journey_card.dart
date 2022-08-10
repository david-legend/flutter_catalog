import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/stacked_images.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';



class JourneyCardItem {
  JourneyCardItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.images,
    this.rating = 0,
    this.collaborators = 0,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final List<String> images;
  final double rating;
  final int collaborators;
}

class JourneyCard extends StatelessWidget {
  JourneyCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.icon = Icons.location_pin,
    this.rating = 0,
    this.elevation = Sizes.ELEVATION_2,
    this.collaborators = 0,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_8,
      ),
    ),
    this.imageBorderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_8,
      ),
    ),
    this.images = RoamData.profileStackedImage,
  });

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData icon;
  final double rating;
  final double elevation;
  final int collaborators;
  final List<String> images;
  final BorderRadiusGeometry borderRadius;
  final BorderRadius imageBorderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.40);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: elevation,
        child: Container(
          padding: EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: imageBorderRadius,
                child: Image.asset(
                  imagePath,
                  width: (width ?? widthOfCard) - (kPadding * 2),
                  height: (height ?? (heightOfCard * 0.6) - (kPadding * 2)),
                  fit: BoxFit.cover,
                ),
              ),
              SpaceH8(),
              Row(
                children: [
                  Text(
                    title,
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  StackedImages(
                    images: images,
                    extraImagesLength: collaborators,
                  ),
                ],
              ),
              SpaceH8(),
              Text(
                subtitle,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: RoamAppColors.grey200,
                ),
              ),
              SpaceH8(),
              Row(
                children: [
                  Text(
                    "$rating",
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: RoamAppColors.primaryText2,
                    ),
                  ),
                  SpaceW4(),
                  Icon(
                    Icons.star,
                    color: RoamAppColors.yellow,
                    size: Sizes.ICON_SIZE_20,
                  ),
                  Spacer(),
                  Container(
                    width: Sizes.WIDTH_32,
                    height: Sizes.HEIGHT_32,
                    decoration: BoxDecoration(
                      color: RoamAppColors.white20,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(Sizes.RADIUS_4),
                      ),
                    ),
                    child: Icon(
                      Icons.bookmark,
                      color: RoamAppColors.yellow,
                    ),
                  ),
                ],
              ),
              SpaceH8(),
            ],
          ),
        ),
      ),
    );
  }
}