import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/empty.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/stacked_images.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SavedPlaceItem {
  SavedPlaceItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.likes = 0,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final int likes;
}

class SavedPlacesCard extends StatelessWidget {
  SavedPlacesCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.images,
    this.hasLikes = true,
    this.likes = 0,
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
  }) : assert((hasLikes && images != null) ||
      (!hasLikes && images == null));

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final bool hasLikes;
  final int likes;
  final List<String>? images;
  final BorderRadiusGeometry borderRadius;
  final BorderRadius? imageBorderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 1);
    double heightOfCard = assignHeight(context: context, fraction: 0.225);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: 2.0,
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
                      style: theme.textTheme.headline6,
                    ),
                    SpaceH8(),
                    Text(
                      subtitle,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: RoamAppColors.primaryColor,
                      ),
                    ),
                    SpaceH8(),
                    hasLikes
                        ? Row(
                      children: [
                        StackedImages(
                          images: images!,
                          extraImagesLength: likes,
                        ),
                        SpaceW4(),
                        Text(
                          RoamStringConst.PEOPLE_LIKES,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: RoamAppColors.primaryColor,
                            fontSize: Sizes.TEXT_SIZE_12,
                          ),
                        ),
                      ],
                    )
                        : Empty(),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidHeart,
                          color: RoamAppColors.accentColor,
                          size: Sizes.ICON_SIZE_20,
                        ),
                      ],
                    )
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
