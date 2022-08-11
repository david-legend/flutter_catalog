import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/curved_container.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/post_card.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/vertical_text.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class Profile4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    TextStyle? subtitleTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: AppColors.white,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    return Scaffold(
      backgroundColor: AppColors.violet400,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.PADDING_16,
              vertical: Sizes.PADDING_16,
            ),
            shrinkWrap: true,
            children: [
              SizedBox(
                height: assignHeight(context: context, fraction: 0.55),
              ),
              _buildListCards(context),
              SpaceH16(),
              _buildListCards(context),
            ],
          ),
          CurvedContainer(
            backgroundColor: AppColors.primaryColor,
            bottomLeftRadius: Sizes.RADIUS_80,
            height: assignHeight(context: context, fraction: 0.525),
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    VerticalText(
                      title: StringConst.NUMBER_OF_FOLLOWERS,
                      subtitle: StringConst.FOLLOWERS,
                      subtitleTextStyle: subtitleTextStyle,
                    ),
                    VerticalText(
                      title: StringConst.NUMBER_OF_FOLLOWING,
                      subtitle: StringConst.FOLLOWING,
                      subtitleTextStyle: subtitleTextStyle,
                    ),
                    VerticalText(
                      title: StringConst.NUMBER_OF_LIKES,
                      subtitle: StringConst.LIKES,
                      subtitleTextStyle: subtitleTextStyle,
                    )
                  ],
                ),
                SpaceH24(),
              ],
            ),
          ),
          CurvedAppBar(
            backgroundColor: AppColors.white,
            hasTrailing: true,
            iconColor: AppColors.violet400,
            height: assignHeight(context: context, fraction: 0.4),
            bottomLeftRadius: Sizes.RADIUS_80,
            title: Column(
              children: [
                SpaceH16(),
                CircleAvatar(
                  backgroundImage: AssetImage(ImagePath.JACK_SNOW),
                  minRadius: Sizes.RADIUS_60,
                  maxRadius: Sizes.RADIUS_60,
                ),
                SpaceH16(),
                VerticalText(
                  title: StringConst.JACK_SNOW,
                  titleTextStyle: theme.textTheme.headlineMedium?.copyWith(
                    color: AppColors.violet400,
                  ),
                  subtitle: StringConst.LOCATION_2,
                  subtitleTextStyle: theme.textTheme.bodyLarge?.copyWith(
                    color: AppColors.indigo50,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.violet400,
        ),
      ),
    );
  }

  @swidget
  Widget _buildListCards(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? headingStyle = theme.textTheme.titleMedium?.copyWith(
      color: AppColors.white,
    );
    TextStyle? contentStyle = theme.textTheme.bodyLarge?.copyWith(
      color: AppColors.purple10,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    TextStyle? iconTextStyle = theme.textTheme.titleLarge?.copyWith(
      color: AppColors.indigo50,
    );

    return PostCard(
      headMainAxisAlignment: MainAxisAlignment.start,
      footerMainAxisAlignment: MainAxisAlignment.end,
      height: assignHeight(context: context, fraction: 0.35),
      padding: const EdgeInsets.all(Sizes.PADDING_16),
      color: AppColors.violet200,
      profileImagePath: ImagePath.JACK_SNOW,
      title: StringConst.JACK_SNOW,
      content: StringConst.SHORT_LOREM_IPSUM,
      contentTextAlign: TextAlign.center,
      hasImage: true,
      contentImagePath: ImagePath.BREAKFAST,
      subTitle: StringConst.DATE,
      titleStyle: headingStyle,
      subtitleStyle: contentStyle,
      contentStyle: contentStyle,
      iconTextStyle: iconTextStyle,
      iconColor: AppColors.purple50,
      canShare: false,
    );
  }
}
