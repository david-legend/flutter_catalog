import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';

class ProductDealItem {
  ProductDealItem({
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
}

class ProductDealCard extends StatelessWidget {
  ProductDealCard({
    this.title,
    this.subtitle,
    this.price,
    this.imagePath,
    this.width = Sizes.WIDTH_200,
    this.height = Sizes.HEIGHT_200,
    this.backgroundColor = DropAppColors.secondaryColor,
    this.borderRadius = const BorderRadius.all(
      const Radius.circular(Sizes.RADIUS_16),
    ),
  });

  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.PADDING_16,
        vertical: Sizes.PADDING_24,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.headline6.copyWith(
                  fontSize: Sizes.TEXT_SIZE_28,
                ),
              ),
              Text(
                subtitle,
                style: theme.textTheme.headline6.copyWith(
                  color: DropAppColors.secondaryColor2,
                  fontSize: Sizes.TEXT_SIZE_28,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: price[0],
                  style: theme.textTheme.headline6.copyWith(
                    color: DropAppColors.accentPurpleColor,
                    fontSize: Sizes.TEXT_SIZE_28,
                  ),
                  children: _buildPrice(context: context, price: price),
                ),
              ),
            ],
          ),
          Image.asset(imagePath, width: width, height: height),
        ],
      ),
    );
  }

  List<TextSpan> _buildPrice({
    @required BuildContext context,
    @required String price,
  }) {
    List<TextSpan> texts = [];
    List<Color> colors = [
      DropAppColors.accentYellowColor,
      DropAppColors.accentPinkColor,
      DropAppColors.accentDarkGreenColor,
      DropAppColors.accentOrangeColor,
    ];

    int colorCounter = 0;
    for (int index = 1; index < price.length; index++) {
      texts.add(
        createText(
            context: context,
            text: price[index],
            textColor: colors[colorCounter]),
      );
      colorCounter++;
      if (colorCounter == colors.length) {
        colorCounter = 0;
      }
    }
    return texts;
  }

  TextSpan createText({
    @required BuildContext context,
    @required String text,
    Color textColor,
  }) {
    ThemeData theme = Theme.of(context);
    return TextSpan(
      text: text,
      style: theme.textTheme.headline6.copyWith(
        color: textColor,
        fontSize: Sizes.TEXT_SIZE_28,
      ),
    );
  }
}
