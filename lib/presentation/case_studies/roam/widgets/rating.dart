import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/empty.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';

class Rating extends StatelessWidget {
  Rating({
    this.rating,
    this.content,
    this.maxRating = 5,
    this.itemCount = 5,
    this.hasContent = true,
  });

  final double rating;
  final String content;
  final double maxRating;
  final int itemCount;
  final bool hasContent;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: Row(
        children: [
          Text(
            "$rating",
            style: theme.textTheme.bodyText2.copyWith(
              color: RoamAppColors.grey200,
            ),
          ),
          SpaceW4(),
          RatingBar.builder(
            initialRating: rating,
            maxRating: maxRating,
            itemSize: Sizes.ICON_SIZE_12,
            itemCount: itemCount,
            ignoreGestures: true,
            direction: Axis.horizontal,
            allowHalfRating: true,
            unratedColor: RoamAppColors.grey50,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: RoamAppColors.yellow,
            ),
            onRatingUpdate: null,
          ),
          hasContent ? SpaceW8() : Empty(),
          hasContent
              ? Text(
                  "$content",
                  style: theme.textTheme.bodyText2.copyWith(
                    color: RoamAppColors.grey200,
                  ),
                )
              : Empty(),
        ],
      ),
    );
  }
}
