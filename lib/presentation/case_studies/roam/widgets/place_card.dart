import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceCard extends StatelessWidget {
  PlaceCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.content,
    this.icon = Icons.location_pin,
    this.rating = 0,
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
  });

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final String content;
  final IconData icon;
  final double rating;
  final BorderRadiusGeometry borderRadius;
  final BorderRadius? imageBorderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = assignWidth(context: context, fraction: 0.7);
    double heightOfCard = assignHeight(context: context, fraction: 0.35);
    double kPadding = Sizes.PADDING_14;

    return Container(
      width: (width ?? widthOfCard),
      height: (height ?? heightOfCard),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(kPadding),
          child: Stack(
            children: [
              Column(
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
                      Icon(
                        icon,
                        size: Sizes.ICON_SIZE_20,
                        color: RoamAppColors.accentColor,
                      ),
                      SpaceW4(),
                      Text(
                        subtitle,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: RoamAppColors.accentColor,
                        ),
                      ),
                    ],
                  ),
                  SpaceH8(),
                  Row(
                    children: [
                      Text(
                        "$rating",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: RoamAppColors.grey200,
                        ),
                      ),
                      SpaceW4(),
                      RatingBar.builder(
                        initialRating: rating,
                        maxRating: 5,
                        itemSize: Sizes.ICON_SIZE_12,
                        itemCount: 5,
                        ignoreGestures: true,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        unratedColor: RoamAppColors.grey50,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: RoamAppColors.yellow,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  SpaceH8(),
                  Text(
                    content,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: RoamAppColors.grey200,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: Sizes.PADDING_8,
                left: (width ?? widthOfCard) - (kPadding * 5),
                child: Container(
                  width: Sizes.WIDTH_18,
                  height: Sizes.HEIGHT_18,
                  decoration: BoxDecoration(
                    color: RoamAppColors.white,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(
                        Sizes.RADIUS_60,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: Sizes.ICON_SIZE_10,
                      color: RoamAppColors.accentColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
