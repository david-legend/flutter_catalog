import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/pill.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class InterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
        child: CustomAppBar(
          hasTrailing: false,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: Sizes.PADDING_24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DropStringConst.LOOKING_FOR,
              style: theme.textTheme.headline4,
            ),
            SpaceH16(),
            Text(
              DropStringConst.CHOOSE_INTEREST,
              style: theme.textTheme.headline6,
            ),
            SpaceH16(),
            Wrap(
              spacing: Sizes.SIZE_16,
              runSpacing: Sizes.SIZE_16,
              children: _buildInterestPills(DropData.pillItems),
            ),
            Spacer(flex: 2),
            CustomButton(
              onPressed: () {
                ExtendedNavigator.root.push(Routes.homeScreen);
              },
              height: Sizes.HEIGHT_60,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: DropStringConst.DONE,
              color: DropAppColors.primaryColor,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: DropAppColors.white,
              ),
            ),
            SpaceH16(),
            CustomButton(
              onPressed: () {
                ExtendedNavigator.root.push(Routes.homeScreen);
              },
              height: Sizes.HEIGHT_60,
              borderSide: Borders.defaultButtonBorder,
              borderRadiusGeometry: AppRadius.defaultButtonRadius,
              title: DropStringConst.SKIP,
              color: DropAppColors.white,
              textStyle: theme.textTheme.subtitle1.copyWith(
                color: DropAppColors.secondaryColor2,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInterestPills(List<PillItem> pillItems) {
    List<Widget> items = [];

    for (int index = 0; index < pillItems.length; index++) {
      items.add(
        Pill(
          title: pillItems[index].title,
          selectedBackgroundColor: pillItems[index].color,
        ),
      );
    }

    return items;
  }
}
