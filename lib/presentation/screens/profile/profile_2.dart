import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/background_widget.dart';
import 'package:fluttercatalog/widgets/custom_app_bar_1.dart';
import 'package:fluttercatalog/widgets/gradient_overlay.dart';
import 'package:fluttercatalog/widgets/post_card.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:fluttercatalog/widgets/vertical_text.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

//TODO:: Add proper unselected label color..
//TODO:: Take another look at  colors and overlay gradient (Gradient Overlay)

class Profile2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.violet400,
        body: Stack(
          children: [
            BackgroundWidget(
              image: AssetImage(ImagePath.IDA),
              height: assignHeight(context: context, fraction: 0.40),
            ),
            GradientOverlay(
              height: assignHeight(context: context, fraction: 0.40),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.PADDING_16,
              ),
              child: Column(
                children: [
                  Container(
                    height: assignHeight(context: context, fraction: 0.40),
                    padding: const EdgeInsets.only(
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
                  SpaceH16(),
                  _buildAccountDetail(),
                  SpaceH16(),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BubbleTabIndicator(
                      indicatorHeight: Sizes.HEIGHT_40,
                      indicatorColor: AppColors.primaryColor,
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    tabs: [
                      Tab(
                        text: StringConst.POPULAR,
                      ),
                      Tab(
                        text: StringConst.RECENT,
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildContent(context: context),
                        _buildContent(context: context),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
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

  @widget
  Widget _buildContent({@required BuildContext context}) {
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
    return Container(
      height: assignHeight(context: context, fraction: 0.60),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.PADDING_16,
        ),
        children: [
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
    );
  }
}
