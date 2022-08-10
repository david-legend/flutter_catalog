import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/tag.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class ExploreCardItem {
  ExploreCardItem({
    required this.title,
    required this.content,
    required this.imagePath,
    this.tags,
    this.rating,
  });

  final String title;
  final String content;
  final String imagePath;
  final double? rating;
  final List<TagItem>? tags;
}

class ExploreCard extends StatelessWidget {
  ExploreCard({
    required this.title,
    required this.content,
    required this.tags,
    required this.imagePath,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_8),
    ),
    this.rating = 0.0,
  });

  final String title;
  final String content;
  final String imagePath;
  final double rating;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final List<TagItem> tags;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = width ?? assignWidth(context: context, fraction: 1);
    double heightOfCard =
        height ?? assignWidth(context: context, fraction: 0.3);
    return Container(
      width: widthOfCard,
      height: heightOfCard,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: Image.asset(
              imagePath,
              width: widthOfCard * 0.25,
              height: heightOfCard * 0.8,
              fit: BoxFit.cover,
            ),
          ),
          SpaceW8(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: RoamAppColors.black50,
                ),
              ),
              SpaceH4(),
              Wrap(
                spacing: Sizes.SIZE_8,
                runSpacing: Sizes.SIZE_8,
                children: _buildTop3Tags(tags),
              ),
              SpaceH8(),
              Row(
                children: [
                  Text(
                    "$rating",
                    style: theme.textTheme.bodyMedium?.copyWith(
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
                    onRatingUpdate: (rate){},
                  ),
                  SpaceW8(),
                  Text(
                    "$content",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: RoamAppColors.grey200,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  List<Widget> _buildTop3Tags(List<TagItem> tags) {
    List<Widget> items = [];

    //use the length of tags coming if it is less than 3, if not pick the first 3.
    int length = tags.length <= 3 ? tags.length : 3;

    for (int index = 0; index < length; index++) {
      items.add(
        Tag(
          tagName: tags[index].tag,
          backgroundColor: tags[index].backgroundColor!,
          textColor: tags[index].textColor!,
        ),
      );
    }

    return items;
  }
}
