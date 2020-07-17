import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/curved_container.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:fluttercatalog/widgets/vertical_text.dart';

class Profile4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle titleTextStyle = theme.textTheme.subtitle2.copyWith(
      color: AppColors.white,
    );
    TextStyle subtitleTextStyle = theme.textTheme.bodyText1.copyWith(
      color: AppColors.white,
      fontSize: Sizes.TEXT_SIZE_14,
//      fontWeight: FontWeight.w100,
    );
    return Scaffold(
      backgroundColor: AppColors.violet400,
      body: Stack(
        children: [
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
                  titleTextStyle: theme.textTheme.headline5.copyWith(
                    color: AppColors.violet400,
                  ),
                  subtitle: StringConst.LOCATION_2,
                  subtitleTextStyle: theme.textTheme.bodyText1.copyWith(
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
}
