import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/post_card.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class TimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.PADDING_16,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: heightOfAppBar,
                ),
                _buildListCards(context),
              ],
            ),
          ),
          CurvedAppBar(
            backgroundColor: AppColors.white,
            hasTrailing: true,
            iconColor: AppColors.violet400,
            height: heightOfAppBar,
            bottomLeftRadius: Sizes.RADIUS_80,
            crossAxisAlignment: CrossAxisAlignment.start,
            onLeadingTap: () {
              ExtendedNavigator.root.pop();
            },
            title: Padding(
              padding: const EdgeInsets.only(
                left: Sizes.PADDING_44,
                top: Sizes.PADDING_16,
              ),
              child: Column(
                children: [
                  Text(
                    StringConst.TIMELINE,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headline5.copyWith(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }

  @swidget
  Widget _buildListCards(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle headingStyle = theme.textTheme.subtitle2.copyWith(
      color: AppColors.white,
    );
    TextStyle contentStyle = theme.textTheme.bodyText1.copyWith(
      color: AppColors.purple10,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    TextStyle iconTextStyle = theme.textTheme.subtitle1.copyWith(
      color: AppColors.indigo50,
    );

    return Column(
      children: [
        PostCard(
          headMainAxisAlignment: MainAxisAlignment.start,
          footerMainAxisAlignment: MainAxisAlignment.end,
          height: assignHeight(context: context, fraction: 0.35),
          padding: const EdgeInsets.all(Sizes.PADDING_16),
          color: AppColors.white,
          profileImagePath: ImagePath.JOHN_BROWN,
          title: StringConst.JOHN_BROWN,
          content: StringConst.SHORT_LOREM_IPSUM,
          contentTextAlign: TextAlign.center,
          hasImage: true,
          contentImagePath: ImagePath.ALICIA,
          subTitle: StringConst.DATE,
          iconTextStyle: iconTextStyle,
          iconColor: AppColors.purple50,
        ),
        SpaceH16(),
        PostCard(
          headMainAxisAlignment: MainAxisAlignment.start,
          footerMainAxisAlignment: MainAxisAlignment.end,
          height: assignHeight(context: context, fraction: 0.25),
          padding: const EdgeInsets.all(Sizes.PADDING_16),
          color: AppColors.violet400,
          profileImagePath: ImagePath.JEAN_COUTU,
          title: StringConst.JEAN_COUTU,
          content: StringConst.LOREM_IPSUM,
          subTitle: StringConst.TIME,
          titleStyle: headingStyle,
          subtitleStyle: contentStyle,
          contentStyle: contentStyle,
          iconTextStyle: iconTextStyle,
          iconColor: AppColors.purple50,
        ),
        SpaceH16(),
        PostCard(
          headMainAxisAlignment: MainAxisAlignment.start,
          footerMainAxisAlignment: MainAxisAlignment.end,
          height: assignHeight(context: context, fraction: 0.25),
          padding: const EdgeInsets.all(Sizes.PADDING_16),
          color: AppColors.white,
          profileImagePath: ImagePath.MAXIME_BARBOSA,
          title: StringConst.MAXIME_BARBOSA,
          content: StringConst.LOREM_IPSUM,
          subTitle: StringConst.DATE,
          iconTextStyle: iconTextStyle,
          iconColor: AppColors.purple50,
        ),
        SpaceH16(),
      ],
    );
  }
}
