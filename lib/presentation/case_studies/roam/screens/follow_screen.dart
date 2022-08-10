import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_list_tile.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';


class FollowListItem {
  FollowListItem({
    required this.title,
    required this.imagePath,
    this.stars = 0,
  });

  final String title;
  final String imagePath;
  final int stars;
}

class FollowScreen extends StatelessWidget {
  List<FollowListItem> items = [
    FollowListItem(
      title: RoamStringConst.LESLIE,
      imagePath: RoamImagePath.LESLIE,
      stars: 31,
    ),
    FollowListItem(
      title: RoamStringConst.DARELL,
      imagePath: RoamImagePath.DARELL,
      stars: 17,
    ),
    FollowListItem(
      title: RoamStringConst.HAWKINS,
      imagePath: RoamImagePath.HAWKINS,
      stars: 27,
    ),
    FollowListItem(
      title: RoamStringConst.CODY,
      imagePath: RoamImagePath.CODY,
      stars: 27,
    ),
    FollowListItem(
      title: RoamStringConst.JANE,
      imagePath: RoamImagePath.JANE,
      stars: 9,
    ),
    FollowListItem(
      title: RoamStringConst.ESTHER,
      imagePath: RoamImagePath.ESTHER,
      stars: 18,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.PADDING_24,
          vertical: Sizes.PADDING_36,
        ),
        children: [
          Text(
            RoamStringConst.FOLLOW_FRIENDS,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.secondaryColor,
              fontSize: Sizes.TEXT_SIZE_20,
            ),
          ),
          SpaceH20(),
          ..._buildFollowersList(items),
          SpaceH20(),
          CustomButton(
            onPressed: () {
              AutoRouter.of(context).push(RootScreenRoute());
            },
            height: Sizes.HEIGHT_56,
            title: RoamStringConst.FINISH,
            borderRadius: Sizes.RADIUS_8,
            textStyle: theme.textTheme.titleLarge?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFollowersList(List<FollowListItem> itemList) {
    List<Widget> items = [];

    for (int index = 0; index < itemList.length; index++) {
      items.add(
        CustomListTile(
          title: itemList[index].title,
          imagePath: itemList[index].imagePath,
          stars: itemList[index].stars,
        ),
      );
    }
    return items;
  }
}
