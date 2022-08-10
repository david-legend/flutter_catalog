import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/stacked_images.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

import 'empty.dart';
class OldTripItem {
  OldTripItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.collaborators = 0,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final int collaborators;
}

class OldTripCard extends StatelessWidget {
  OldTripCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.images,
    this.hasCollaborators = true,
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
    this.elevation = Sizes.ELEVATION_2,
  }) : assert((hasCollaborators && images != null) ||
      (!hasCollaborators && images == null));

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final BorderRadiusGeometry borderRadius;
  final BorderRadius? imageBorderRadius;
  final bool hasCollaborators;
  final int collaborators;
  final double elevation;
  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.18);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: elevation,
        child: Container(
          padding: EdgeInsets.all(kPadding),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: imageBorderRadius,
                child: Image.asset(
                  imagePath,
                  width: (width ?? widthOfCard * 0.35) - (kPadding * 2),
                  height: height ?? heightOfCard,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceW8(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Spacer(),
                    Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Spacer(),
                    hasCollaborators
                        ? Row(
                      children: [
                        StackedImages(
                          images: images!,
                          extraImagesLength: collaborators,
                        ),
                        SpaceW4(),
                        Text(
                          RoamStringConst.TRIP_COLLABORATORS,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: Sizes.TEXT_SIZE_12,
                          ),
                        ),
                      ],
                    )
                        : Empty(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
