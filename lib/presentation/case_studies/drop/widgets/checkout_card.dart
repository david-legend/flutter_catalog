import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class CheckOutItem {
  final String title;
  final String quantity;
  final String price;
  final String imagePath;

  CheckOutItem({
    @required this.title,
    @required this.quantity,
    @required this.price,
    @required this.imagePath,
  });
}

class CheckOutCard extends StatelessWidget {
  final String title;
  final String quantity;
  final String price;
  final String imagePath;
  final double width;
  final double height;
  final double widthOfImage;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;

  CheckOutCard({
    @required this.title,
    @required this.quantity,
    @required this.price,
    @required this.imagePath,
    this.width,
    this.height = Sizes.HEIGHT_100,
    this.widthOfImage = Sizes.WIDTH_150,
    this.backgroundColor = DropAppColors.secondaryColor,
    this.borderRadius = const BorderRadius.only(
      topRight: const Radius.circular(Sizes.RADIUS_12),
      bottomRight: const Radius.circular(Sizes.RADIUS_12),
    ),
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double widthOfCard = width ?? assignWidth(context: context, fraction: 1.0);
    double spacing = Sizes.SIZE_8;
    double margin = Sizes.SIZE_24;
    return Container(
      height: height,
      width: widthOfCard,
      child: Row(
        children: [
          Container(
            height: height,
            width: widthOfImage,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: borderRadius,
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset(
                  imagePath,
                  width: Sizes.WIDTH_100,
                  height: Sizes.HEIGHT_100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: spacing,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.headline6,
              ),
              SpaceH4(),
              Container(
                width: assignWidth(
                  context: context,
                  fraction: 1,
                  subs: (widthOfImage + spacing + margin),
                ),
                child: Row(
                  children: [
                    Text(
                      price,
                      style: theme.textTheme.subtitle1.copyWith(
                        fontSize: Sizes.TEXT_SIZE_20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      quantity,
                      style: theme.textTheme.subtitle1.copyWith(
                        color: DropAppColors.secondaryColor2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
