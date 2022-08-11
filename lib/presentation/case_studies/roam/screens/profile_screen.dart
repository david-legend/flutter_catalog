import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/album_cover.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button_2.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/journey_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/section_heading.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

const double kPaddingHorizontal = Sizes.PADDING_24;

class RoamProfileScreen extends StatefulWidget {
  @override
  _RoamProfileScreenState createState() => _RoamProfileScreenState();
}

class _RoamProfileScreenState extends State<RoamProfileScreen>
{

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    double widthOfScreen = assignWidth(context: context, fraction: 1.0);
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _buildList(),
            Container(
              height: heightOfScreen * 0.6,
              decoration: BoxDecoration(
                color: RoamAppColors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: const Radius.circular(Sizes.RADIUS_60),
                ),
                boxShadow: [Shadows.containerShadow],
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    RoamImagePath.BLUE_ELLIPSE,
                    width: widthOfScreen * 0.75,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: (heightOfScreen * 0.06)),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(
                        RoamImagePath.SEMI_CIRCLE,
                        width: widthOfScreen * 0.20,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: Sizes.MARGIN_24,
                          vertical: Sizes.MARGIN_36,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: Sizes.WIDTH_48,
                              height: Sizes.HEIGHT_48,
                              child: CustomButton2(
                                onPressed: () {},
                                height: Sizes.HEIGHT_48,
                                borderRadius: Sizes.RADIUS_8,
                                icon: FeatherIcons.settings,
                                iconColor: RoamAppColors.grey,
                                color: RoamAppColors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                RoamImagePath.NOTIFICATION,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: Sizes.MARGIN_24,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: widthOfScreen * 0.3,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: SvgPicture.asset(
                                      RoamImagePath.YELLOW_CIRCLE,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(
                                        Sizes.RADIUS_30,
                                      ),
                                    ),
                                    child: Image.asset(RoamImagePath.KRISTIN),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: widthOfScreen * 0.55,
                              padding: EdgeInsets.only(
                                left: Sizes.PADDING_16,
                                top: Sizes.PADDING_16,
                                bottom: Sizes.PADDING_16,
                              ),
                              decoration: BoxDecoration(
                                color: RoamAppColors.white60,
                                borderRadius: const BorderRadius.only(
                                  topLeft:
                                  const Radius.circular(Sizes.RADIUS_60),
                                  bottomLeft:
                                  const Radius.circular(Sizes.RADIUS_60),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  VerticalText(
                                    title: RoamStringConst.NO_OF_FOLLOWERS,
                                    subtitle: RoamStringConst.FOLLOWERS,
                                  ),
                                  VerticalText(
                                    title: RoamStringConst.NO_OF_FOLLOWING,
                                    subtitle: RoamStringConst.FOLLOWING,
                                  ),
                                  VerticalText(
                                    title: RoamStringConst.NO_OF_TRAVELS,
                                    subtitle: RoamStringConst.TRAVELS,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SpaceH12(),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: Sizes.MARGIN_24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              RoamStringConst.KRISTIN,
                              style: theme.textTheme.headlineMedium?.copyWith(
                                color: RoamAppColors.black50,
                              ),
                            ),
                            Text(
                              RoamStringConst.USER_HANDLE,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: RoamAppColors.grey200,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SpaceH12(),
                            Text(
                              RoamStringConst.ABOUT_USER,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: RoamAppColors.black20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FeatherIcons.chevronUp,
                          color: RoamAppColors.grey200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildList() {
    ThemeData theme = Theme.of(context);
    double heightOfScreen = assignHeight(context: context, fraction: 1.0);
    return ListView(
      padding: EdgeInsets.only(
        top: heightOfScreen * 0.65,
        left: kPaddingHorizontal,
        right: kPaddingHorizontal,
      ),
      children: [
        SectionHeading(
          title1: RoamStringConst.PHOTO_STORIES,
          hasTitle2: false,
        ),
        Wrap(
          spacing: Sizes.SIZE_8,
          runSpacing: Sizes.SIZE_8,
          children: _buildAlbum(RoamData.albumItems),
        ),
        SpaceH16(),
        SectionHeading(
          title1: RoamStringConst.JOURNEYS,
          hasTitle2: false,
        ),
        SpaceH16(),
        Column(
          children: _buildJourneyCards(RoamData.journeyItems),
        ),
        SpaceH16(),
        CustomButton(
          onPressed: () {},
          title: RoamStringConst.SEE_JOURNEYS,
          color: RoamAppColors.white,
          borderRadius: Sizes.RADIUS_8,
          borderSide: BorderSide(
            width: Sizes.WIDTH_1,
            color: RoamAppColors.accentColor,
          ),
          textStyle: theme.textTheme.titleLarge?.copyWith(
            color: RoamAppColors.accentColor,
          ),
        )
      ],
    );
  }

  List<Widget> _buildAlbum(List<AlbumCoverItem> albumItems) {
    List<Widget> items = [];

    for (int index = 0; index < albumItems.length; index++) {
      items.add(
        AlbumCover(
          title: albumItems[index].title,
          imagePath: albumItems[index].imagePath,
          width: assignWidth(
            context: context,
            fraction: albumItems[index].width,
            subs: ((kPaddingHorizontal * 2) + (albumItems[index].spacing * 2)),
          ),
        ),
      );
    }

    return items;
  }

  List<Widget> _buildJourneyCards(List<JourneyCardItem> journeyItems) {
    List<Widget> items = [];

    for (int index = 0; index < journeyItems.length; index++) {
      items.add(
        JourneyCard(
          title: journeyItems[index].title,
          subtitle: journeyItems[index].subtitle,
          imagePath: journeyItems[index].imagePath,
          images: RoamData.profileStackedImage,
          rating: journeyItems[index].rating,
          collaborators: journeyItems[index].collaborators,
        ),
      );
    }
    return items;
  }
}

class VerticalText extends StatelessWidget {
  VerticalText({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: RoamAppColors.black50,
            ),
          ),
          SpaceH8(),
          Text(
            subtitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: RoamAppColors.black50,
              fontSize: Sizes.TEXT_SIZE_14,
            ),
          ),
        ],
      ),
    );
  }
}
