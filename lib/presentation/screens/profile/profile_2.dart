import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/background_widget.dart';
import 'package:fluttercatalog/widgets/custom_app_bar_1.dart';
import 'package:fluttercatalog/widgets/post_card.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:fluttercatalog/widgets/vertical_text.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class Profile2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: AppColors.violet400,
      body: Stack(
        children: [
          BackgroundWidget(
            image: AssetImage(ImagePath.IDA),
            height: assignHeight(context: context, fraction: 0.40),
          ),
          Column(
            children: [
              Container(
                height: assignHeight(context: context, fraction: 0.40),
                padding: const EdgeInsets.only(
                  left: Sizes.PADDING_16,
                  right: Sizes.PADDING_16,
                  top: Sizes.SAFE_AREA_MARGIN + Sizes.PADDING_16,
                  bottom: Sizes.PADDING_16,
                ),
                child: Column(
                  children: [
                    CustomAppBar1(),
                    Spacer(),
                    Text(
                      StringConst.IDA,
                      style: theme.textTheme.headline4.copyWith(
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: assignHeight(context: context, fraction: 0.60),
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.PADDING_16,
                    vertical: Sizes.PADDING_16,
                  ),
                  children: [
                    _buildAccountDetail(),
                    SpaceH16(),
                    PostCard(
                      headMainAxisAlignment: MainAxisAlignment.center,
                      footerMainAxisAlignment: MainAxisAlignment.center,
                      padding: const EdgeInsets.all(Sizes.PADDING_16),
                      color: AppColors.violet200,
                      imagePath: ImagePath.IDA,
                      title: StringConst.IDA,
                      contentTextAlign: TextAlign.center,
                      subTitle: StringConst.TIME,
                      titleStyle: headingStyle,
                      subtitleStyle: contentStyle,
                      contentStyle: contentStyle,
                      iconTextStyle: iconTextStyle,
                      iconColor: AppColors.purple50,
                      canShare: false,
                    ),
                    SpaceH16(),
                    PostCard(
                      headMainAxisAlignment: MainAxisAlignment.center,
                      footerMainAxisAlignment: MainAxisAlignment.center,
                      padding: const EdgeInsets.all(Sizes.PADDING_16),
                      color: AppColors.violet200,
                      imagePath: ImagePath.IDA,
                      title: StringConst.IDA,
                      contentTextAlign: TextAlign.center,
                      subTitle: StringConst.TIME,
                      titleStyle: headingStyle,
                      subtitleStyle: contentStyle,
                      contentStyle: contentStyle,
                      iconTextStyle: iconTextStyle,
                      iconColor: AppColors.purple50,
                      canShare: false,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @widget
  Widget _buildAccountDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        VerticalText(
          title: StringConst.NUMBER_OF_FOLLOWERS,
          subtitle: StringConst.FOLLOWERS,
        ),
        VerticalText(
          title: StringConst.NUMBER_OF_FOLLOWING,
          subtitle: StringConst.FOLLOWING,
        ),
        VerticalText(
          title: StringConst.NUMBER_OF_LIKES,
          subtitle: StringConst.LIKES,
        )
      ],
    );
  }
}
