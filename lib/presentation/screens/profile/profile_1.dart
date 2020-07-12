import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/action_icon.dart';
import 'package:fluttercatalog/widgets/background_widget.dart';
import 'package:fluttercatalog/widgets/curved_button.dart';
import 'package:fluttercatalog/widgets/curved_container.dart';
import 'package:fluttercatalog/widgets/post_card.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

class Profile1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(
            image: AssetImage(ImagePath.MARIA),
            height: assignHeight(context: context, fraction: 0.5),
          ),
          Column(
            children: [
              Container(
                height: assignHeight(context: context, fraction: 0.35),
                padding: const EdgeInsets.only(
                  left: Sizes.PADDING_16,
                  right: Sizes.PADDING_16,
                  top: Sizes.SAFE_AREA_MARGIN + Sizes.PADDING_16,
                ),
                child: _buildAppBar(),
              ),
              CurvedContainer(
                height: assignHeight(context: context, fraction: 0.65),
                decoration: BoxDecoration(
                  color: AppColors.white50,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Sizes.RADIUS_60),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.PADDING_16,
                  ),
                  children: [
                    _buildProfileDetails(context: context),
                    SpaceH20(),
                    _buildOptionIcons(context: context),
                    SpaceH16(),
                    PostCard(
                      margin: const EdgeInsets.symmetric(
                        horizontal: Sizes.MARGIN_16,
                      ),
                      padding: const EdgeInsets.all(Sizes.PADDING_16),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @widget
  Widget _buildAppBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.search,
          ),
        )
      ],
    );
  }

  @widget
  Widget _buildProfileDetails({@required BuildContext context}) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConst.MARIA,
                style: theme.textTheme.headline5,
              ),
              Text(
                StringConst.USER_LOCATION,
                style: theme.textTheme.bodyText1.copyWith(
                  color: AppColors.purple50,
                ),
              ),
              Text(
                StringConst.AGE,
                style: theme.textTheme.bodyText1.copyWith(
                  color: AppColors.purple50,
                ),
              ),
            ],
          ),
          CurvedButton(
            title: StringConst.FOLLOW,
            onTap: () {},
          )
        ],
      ),
    );
  }

  @widget
  Widget _buildOptionIcons({@required BuildContext context}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
      height: assignHeight(context: context, fraction: 0.3),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.RADIUS_20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionIcon(
                onTap: () {},
                title: StringConst.CHAT,
                iconData: FeatherIcons.messageSquare,
                color: AppColors.grey,
              ),
              Spacer(),
              ActionIcon(
                onTap: () {},
                title: StringConst.DOCKS,
                iconData: Icons.airplay,
                color: AppColors.pink50,
              ),
              Spacer(),
              ActionIcon(
                onTap: () {},
                title: StringConst.LOCATION,
                iconData: FeatherIcons.mapPin,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          Divider(
            height: Sizes.HEIGHT_24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionIcon(
                onTap: () {},
                title: StringConst.FRIENDS,
                iconData: FeatherIcons.users,
                color: AppColors.primaryColor,
              ),
              Spacer(),
              ActionIcon(
                onTap: () {},
                title: StringConst.SETTINGS,
                iconData: FeatherIcons.settings,
                color: AppColors.grey,
              ),
              Spacer(),
              ActionIcon(
                onTap: () {},
                title: StringConst.NOTIFICATIONS,
                iconData: FeatherIcons.bell,
                color: AppColors.pink50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
