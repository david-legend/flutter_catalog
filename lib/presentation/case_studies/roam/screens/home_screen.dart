import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_text_form_field.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/discover_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/place_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/search_input.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/section_heading.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/trending_card.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

const double kSidePadding = Sizes.PADDING_24;
const double kButtonWidth = Sizes.WIDTH_56;

class DiscoverCardItem {
  DiscoverCardItem({
    required this.title,
    required this.icon,
    this.color,
    this.backgroundColor,
  });

  final String title;
  final String icon;
  final Color? color;
  final Color? backgroundColor;
}

class TrendingCardItem {
  TrendingCardItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.rating = 0,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final double rating;
}

class PlaceCardItem {
  PlaceCardItem({
    required this.title,
    required this.subtitle,
    required this.content,
    required this.imagePath,
    this.rating = 0,
  });

  final String title;
  final String subtitle;
  final String content;
  final String imagePath;
  final double rating;
}

class RoamHomeScreen extends StatefulWidget {
  @override
  _RoamHomeScreenState createState() => _RoamHomeScreenState();
}

class _RoamHomeScreenState extends State<RoamHomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kSidePadding,
          vertical: Sizes.PADDING_8,
        ),
        children: [
          Text(
            RoamStringConst.TRAVEL,
            style: theme.textTheme.headlineMedium?.copyWith(
              color: AppColors.primaryColor,
              fontSize: Sizes.TEXT_SIZE_28,
            ),
          ),
          SpaceH16(),
          SearchInput(),
          SpaceH24(),
          SectionHeading(
            title1: RoamStringConst.DISCOVER,
            title2: RoamStringConst.SEE_ALL,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.125),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: RoamData.discoverCardItems.length,
              itemBuilder: (BuildContext context, int index) {
                return DiscoverCard(
                  title: RoamData.discoverCardItems[index].title,
                  backgroundColor:
                  RoamData.discoverCardItems[index].backgroundColor,
                  color: RoamData.discoverCardItems[index].color,
                  child: SvgPicture.asset(
                    RoamData.discoverCardItems[index].icon,
                    width: Sizes.WIDTH_40,
                    height: Sizes.HEIGHT_40,
                    color: RoamData.discoverCardItems[index].color,
                  ),
                  onTap: () {},
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW8();
              },
            ),
          ),
          SpaceH24(),
          SectionHeading(
            title1: RoamStringConst.TRENDING_SIGHTS,
            title2: RoamStringConst.MOST_VISITED,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.3),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: RoamData.trendingItems.length,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
              itemBuilder: (BuildContext context, int index) {
                return TrendingCard(
                  title: RoamData.trendingItems[index].title,
                  subtitle: RoamData.trendingItems[index].subtitle,
                  imagePath: RoamData.trendingItems[index].imagePath,
                  rating: RoamData.trendingItems[index].rating,
                  onTap: () {
                    AutoRouter.of(context).push(PlaceScreenRoute(
                      place: RoamData.trendingItems[index].title,
                      location: RoamData.trendingItems[index].subtitle,
                      imagePath: RoamData.trendingItems[index].imagePath,
                      rating: RoamData.trendingItems[index].rating,
                    ));
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW16();
              },
            ),
          ),
          SpaceH24(),
          SectionHeading(
            title1: RoamStringConst.FOR_YOU,
            title2: RoamStringConst.SEE_ALL,
          ),
          SpaceH12(),
          Container(
            height: assignHeight(context: context, fraction: 0.35),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: RoamData.placeCardItems.length,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_8),
              itemBuilder: (BuildContext context, int index) {
                return PlaceCard(
                  title: RoamData.placeCardItems[index].title,
                  subtitle: RoamData.placeCardItems[index].subtitle,
                  content: RoamData.placeCardItems[index].content,
                  imagePath: RoamData.placeCardItems[index].imagePath,
                  rating: RoamData.placeCardItems[index].rating,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SpaceW16();
              },
            ),
          ),
        ],
      ),
    );
  }

}
