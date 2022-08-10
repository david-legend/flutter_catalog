import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class TrendingCard extends StatelessWidget {
  TrendingCard({
    this.width,
    this.height,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.icon = Icons.location_pin,
    this.rating = 0,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(
        Sizes.RADIUS_18,
      ),
    ),
  });

  final double? width;
  final double? height;
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData icon;
  final double rating;
  final GestureTapCallback? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    double widthOfCard = assignWidth(context: context, fraction: 0.45);
    double heightOfCard = assignHeight(context: context, fraction: 0.3);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? widthOfCard,
        height: height ?? heightOfCard,
        decoration: BoxDecoration(
          boxShadow: [Shadows.containerShadow],
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: [
            _buildBackgroundImage(
              widthOfCard: widthOfCard,
              heightOfCard: heightOfCard,
            ),
            _buildRating(context: context, widthOfCard: widthOfCard),
            _buildLocation(
              context: context,
              widthOfCard: widthOfCard,
              heightOfCard: heightOfCard,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage({
    required double widthOfCard,
    required double heightOfCard,
  }) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.asset(
        imagePath,
        width: width ?? widthOfCard,
        height: height ?? heightOfCard,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildRating({
    required BuildContext context,
    required double widthOfCard,
  }) {
    ThemeData theme = Theme.of(context);
    return Positioned(
      top: 16,
      left: (width ?? widthOfCard) - (Sizes.WIDTH_64 + Sizes.MARGIN_8),
      child: Container(
        width: Sizes.WIDTH_64,
        height: Sizes.HEIGHT_24,
        decoration: BoxDecoration(
          color: RoamAppColors.secondaryColor,
          borderRadius: const BorderRadius.all(
            const Radius.circular(
              Sizes.RADIUS_30,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$rating",
              style: theme.textTheme.bodyLarge?.copyWith(
                color: RoamAppColors.white,
              ),
            ),
            SpaceW4(),
            Icon(
              Icons.star,
              color: RoamAppColors.yellow,
              size: Sizes.ICON_SIZE_16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocation({
    required BuildContext context,
    required double widthOfCard,
    required double heightOfCard,
  }) {
    ThemeData theme = Theme.of(context);
    double kMargin = Sizes.MARGIN_8;
    return Positioned(
      top: (height ?? heightOfCard) * 0.6,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: kMargin,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            const Radius.circular(
              Sizes.RADIUS_18,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              height: (height ?? heightOfCard) * 0.36,
              width: (width ?? widthOfCard) - (kMargin * 2),
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.PADDING_8,
                vertical: Sizes.PADDING_8,
              ),
              decoration: BoxDecoration(
                gradient: Gradients.discoverCardOverlayGradient,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Sizes.PADDING_4),
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: RoamAppColors.white,
                        fontSize: Sizes.TEXT_SIZE_16,
                      ),
                    ),
                  ),
                  SpaceH4(),
                  Row(
                    children: [
                      Icon(icon),
                      SpaceW4(),
                      Text(
                        subtitle,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: RoamAppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
