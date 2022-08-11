import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/background_widget.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/curved_container.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_app_bar_1.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/vertical_text.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class Profile3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(
            image: AssetImage(ImagePath.PROFILE_COVER),
            height: assignHeight(context: context, fraction: 0.60),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: assignHeight(context: context, fraction: 0.45),
                  padding: const EdgeInsets.only(
                    left: Sizes.PADDING_16,
                    right: Sizes.PADDING_16,
                    top: Sizes.SAFE_AREA_MARGIN + Sizes.PADDING_16,
                    bottom: Sizes.PADDING_24,
                  ),
                  child: Column(
                    children: [
                      CustomAppBar1(),
                      Spacer(),
                      CircleAvatar(
                        backgroundImage: AssetImage(ImagePath.ALEXIO_MORALES),
                        minRadius: Sizes.SIZE_24,
                        maxRadius: Sizes.SIZE_24,
                      ),
                      Text(
                        StringConst.ALEXIO_MORALES,
                        style: theme.textTheme.headlineLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        StringConst.NUMBER_OF_FOLLOWERS_2,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                CurvedContainer(
                  height: assignHeight(context: context, fraction: 0.55),
                  backgroundColor: AppColors.white,
                  topLeftRadius: Sizes.RADIUS_40,
                  topRightRadius: Sizes.RADIUS_40,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      VerticalText(
                        title: StringConst.PHOTOS_AND_VIDEOS,
                        titleTextStyle: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Sizes.TEXT_SIZE_18,
                        ),
                        subtitle: StringConst.NUMBER_OF_PHOTOS,
                        subtitleTextStyle: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: Sizes.TEXT_SIZE_14,
                          color: AppColors.purple50,
                        ),
                      ),
                      SpaceH16(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagePath.TOWER,
                            height: assignHeight(
                              context: context,
                              fraction: 0.4,
                            ),
                            fit: BoxFit.cover,
                          ),
                          SpaceW12(),
                          Column(
                            children: [
                              Image.asset(
                                ImagePath.SHAPES,
                                height: assignHeight(
                                  context: context,
                                  fraction: 0.2,
                                  subs: 30,
                                ),
                                fit: BoxFit.cover,
                              ),
                              SpaceH12(),
                              Image.asset(
                                ImagePath.CAVES,
                                height: assignHeight(
                                  context: context,
                                  fraction: 0.2,
                                  subs: 30,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
