import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/attraction_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/explore_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/section_heading.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/stacked_images.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double kPaddingHorizontal = Sizes.PADDING_24;

class PlaceScreen extends StatelessWidget {
  PlaceScreen({
    @required this.place,
    @required this.location,
    @required this.imagePath,
    @required this.rating,
  });

  final String place;
  final String location;
  final String imagePath;
  final double rating;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildTopSection(context),
          SpaceH8(),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    RoamStringConst.LOREM_IPSUM_2,
                    style: theme.textTheme.bodyText1.copyWith(
                      color: RoamAppColors.primaryText2,
                    ),
                  ),
                  SpaceH8(),
                  StackedImages(
                    images: RoamData.profileStackedImage,
                    extraImagesLength: 150,
                    color: RoamAppColors.lightGreen50,
                    widthOfImageItem: Sizes.WIDTH_36,
                    heightOfImageItem: Sizes.HEIGHT_36,
                    textSize: Sizes.TEXT_SIZE_10,
                    offset: Sizes.WIDTH_36 / 2,
                    textColor: RoamAppColors.secondaryColor,
                  ),
                ],
              ),
              SpaceH16(),
              Column(
                children: [
                  SectionHeading(
                    title1: "${RoamStringConst.MORE_OF} $place",
                    hasTitle2: false,
                  ),
                  SpaceH16(),
                  Container(
                    height: assignHeight(context: context, fraction: 0.125),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: RoamData.moreImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(Sizes.RADIUS_12),
                          ),
                          child: Image.asset(
                            RoamData.moreImages[index],
                            width:
                                assignWidth(context: context, fraction: 0.25),
                            height:
                                assignHeight(context: context, fraction: 0.20),
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SpaceW12();
                      },
                    ),
                  ),
                ],
              ),
              SpaceH16(),
              SectionHeading(
                title1: RoamStringConst.PLACES_TO_EXPLORE,
                hasTitle2: false,
              ),
              SpaceH12(),
              ..._buildExploreCards(RoamData.exploreCardItems),
              SpaceH16(),
              SectionHeading(
                title1: RoamStringConst.EXPERIENCES,
                hasTitle2: false,
              ),
              SpaceH12(),
              _buildAttractionCards(context),
              SpaceH24(),
              Center(
                child: Text(
                  RoamStringConst.SEE_MORE,
                  style: theme.textTheme.bodyText2.copyWith(
                    color: RoamAppColors.primaryColor,
                  ),
                ),
              ),
              SpaceH16(),
              CustomButton(
                onPressed: () {},
                borderRadius: Sizes.RADIUS_8,
                title: RoamStringConst.LETS_GO + place,
                textStyle: theme.textTheme.subtitle1.copyWith(
                  color: RoamAppColors.white,
                ),
              ),
              SpaceH24(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = assignWidth(context: context, fraction: 1);
    double height = assignHeight(context: context, fraction: 0.4);
    double widthOfFab = Sizes.WIDTH_56;
    double heightOfFab = Sizes.HEIGHT_56;
    double kPadding = Sizes.PADDING_16;
    return Container(
      height: height + (heightOfFab / 2),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: const Radius.circular(Sizes.RADIUS_60),
            ),
            child: Image.asset(
              imagePath,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          _buildContent(context),
          Positioned(
            top: height - (heightOfFab / 2),
            left: width - (widthOfFab + kPadding),
            child: Container(
              width: widthOfFab,
              height: heightOfFab,
              decoration: BoxDecoration(
                color: RoamAppColors.white,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(
                    Sizes.RADIUS_60,
                  ),
                ),
                boxShadow: [
                  Shadows.customContainerShadow(
                    color: RoamAppColors.accentColor40,
                    blurRadius: 12,
                  )
                ],
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  color: RoamAppColors.accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double height = assignHeight(context: context, fraction: 0.4);
    return Container(
      height: height,
      padding: EdgeInsets.only(
        top: Sizes.PADDING_32,
        left: Sizes.PADDING_24,
        right: Sizes.PADDING_24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Sizes.WIDTH_50,
                height: Sizes.HEIGHT_50,
                child: CustomButton2(
                  onPressed: () => ExtendedNavigator.root.pop(),
                  icon: Icons.arrow_back_ios,
                  borderRadius: Sizes.RADIUS_8,
                ),
              ),
              Container(
                width: Sizes.WIDTH_64,
                height: Sizes.WIDTH_32,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: RoamAppColors.black10,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(Sizes.RADIUS_20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$rating",
                      style: theme.textTheme.subtitle1.copyWith(
                        color: RoamAppColors.white,
                        fontSize: Sizes.TEXT_SIZE_14,
                      ),
                    ),
                    SpaceW4(),
                    Icon(
                      Icons.star,
                      color: RoamAppColors.yellow,
                      size: Sizes.ICON_SIZE_16,
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.only(bottom: Sizes.PADDING_24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$place",
                      style: theme.textTheme.headline5.copyWith(
                        color: RoamAppColors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: RoamAppColors.yellow,
                          size: Sizes.ICON_SIZE_18,
                        ),
                        SpaceW4(),
                        Text(
                          "$location",
                          style: theme.textTheme.subtitle1.copyWith(
                            color: RoamAppColors.yellow,
                            fontSize: Sizes.TEXT_SIZE_20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(
                  RoamImagePath.CLOUD,
                  width: Sizes.WIDTH_30,
                  height: Sizes.HEIGHT_30,
                  fit: BoxFit.cover,
                ),
                SpaceW8(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: RoamStringConst.TEMPERATURE,
                        style: theme.textTheme.headline5.copyWith(
                          color: RoamAppColors.white,
                        ),
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, -4),
                          child: Text(
                            RoamStringConst.CELSIUS,
                            textScaleFactor: 0.7,
                            style: theme.textTheme.subtitle1.copyWith(
                              color: RoamAppColors.white,
                              fontSize: Sizes.TEXT_SIZE_20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildExploreCards(List<ExploreCardItem> exploreItems) {
    List<Widget> items = [];

    for (int index = 0; index < exploreItems.length; index++) {
      items.add(
        ExploreCard(
          title: exploreItems[index].title,
          content: exploreItems[index].content,
          imagePath: exploreItems[index].imagePath,
          tags: exploreItems[index].tags,
          rating: exploreItems[index].rating,
        ),
      );
    }
    return items;
  }

  Widget _buildAttractionCards(BuildContext context) {
    return Container(
      height: assignHeight(context: context, fraction: 0.30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: RoamData.attractionCardItems.length,
        padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
        itemBuilder: (BuildContext context, int index) {
          return AttractionCard(
            title: RoamData.attractionCardItems[index].title,
            content: RoamData.attractionCardItems[index].content,
            imagePath: RoamData.attractionCardItems[index].imagePath,
            rating: RoamData.attractionCardItems[index].rating,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SpaceW16();
        },
      ),
    );
  }
}
