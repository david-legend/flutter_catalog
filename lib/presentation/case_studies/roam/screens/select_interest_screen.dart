import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/interest_card.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class InterestItem {
  InterestItem(this.title, this.imagePath);

  final String title;
  final String imagePath;
}

class SelectInterestScreen extends StatelessWidget {
  List<InterestItem> items = [
    InterestItem(RoamStringConst.NATURE, RoamImagePath.THAILAND),
    InterestItem(RoamStringConst.FOOD, RoamImagePath.FOOD),
    InterestItem(RoamStringConst.PEOPLE, RoamImagePath.PEOPLE),
    InterestItem(RoamStringConst.ADVENTURE, RoamImagePath.GREAT_WALL),
    InterestItem(RoamStringConst.WILDLIFE, RoamImagePath.WILDLIFE),
    InterestItem(RoamStringConst.CULTURE, RoamImagePath.VIETNAM_2),
    InterestItem(RoamStringConst.BEACH, RoamImagePath.BEACHES_BALI),
    InterestItem(RoamStringConst.MOUNTAIN, RoamImagePath.MOUNTAIN),
    InterestItem(RoamStringConst.URBAN, RoamImagePath.URBAN),
    InterestItem(RoamStringConst.RESORT, RoamImagePath.RESORTS),
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
          RichText(
            text: TextSpan(
              text: RoamStringConst.HELLO,
              style: theme.textTheme.bodyText1.copyWith(
                color: RoamAppColors.secondaryColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: RoamStringConst.KRISTIN,
                  style: theme.textTheme.bodyText1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: RoamAppColors.secondaryColor,
                  ),
                ),
                TextSpan(
                  text: RoamStringConst.INTEREST,
                  style: theme.textTheme.bodyText1.copyWith(
                    color: RoamAppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          SpaceH16(),
          Text(
            RoamStringConst.SELECT_5,
            style: theme.textTheme.bodyText2.copyWith(
              color: RoamAppColors.grey,
            ),
          ),
          SpaceH16(),
          Wrap(
            spacing: Sizes.SIZE_16,
            runSpacing: Sizes.SIZE_16,
            children: _buildInterests(items),
          ),
          SpaceH24(),
          CustomButton(
            onPressed: () {
              ExtendedNavigator.root.push(Routes.followScreen);
            },
            height: Sizes.HEIGHT_56,
            title: RoamStringConst.NEXT,
            borderRadius: Sizes.RADIUS_8,
            textStyle: theme.textTheme.subtitle1.copyWith(
              color: RoamAppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildInterests(List<InterestItem> itemList) {
    List<Widget> items = [];

    for (int index = 0; index < itemList.length; index++) {
      items.add(
        InterestCard(
          title: itemList[index].title,
          imagePath: itemList[index].imagePath,
        ),
      );
    }
    return items;
  }
}
