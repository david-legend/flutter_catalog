import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/curved_post_card.dart';

import 'package:functional_widget_annotation/functional_widget_annotation.dart';

//TODO:: Document how curvedPostCards is being added
//TODO:: Add other screens
//TODO:: -- Updates Screen (with those cool colors)
//TODO:: -- Updates2 Screen(with those cool colors)
//TODO:: -- Updates3 Screen(with those cool colors)

List<PostItem> curvedPostCardItems = [
  PostItem(
    height: 200,
    body: null,
  ),
  PostItem(
    height: 260,
    topMargin: 40,
    body: Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: Sizes.PADDING_24),
        children: [
          Image.asset(ImagePath.MEDITATION),
          Image.asset(ImagePath.YOGA),
          Image.asset(ImagePath.MEDITATION),
          Image.asset(ImagePath.YOGA),
        ],
      ),
    ),
    hasFooter: false,
  ),
  PostItem(height: 200, body: null),
];

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: _buildCurvedCards(curvedPostCardItems),
              ),
            ],
          ),
          CurvedAppBar(
            backgroundColor: AppColors.white,
            hasTrailing: true,
            iconColor: AppColors.violet400,
            height: heightOfAppBar,
            bottomLeftRadius: Sizes.RADIUS_80,
            crossAxisAlignment: CrossAxisAlignment.start,
            boxShadow: Shadows.containerShadow,
            onLeadingTap: () {
              ExtendedNavigator.ofRouter<Router>().pop();
            },
            title: Padding(
              padding: const EdgeInsets.only(
                left: Sizes.PADDING_44,
                top: Sizes.PADDING_16,
              ),
              child: Column(
                children: [
                  Text(
                    StringConst.ACTIVITY,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headline5.copyWith(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @widget
  List<Widget> _buildCurvedCards(List<PostItem> postItems) {
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);
    List<Widget> curvedCards = [];

    for (var index = 0; index < postItems.length; index++) {
      double height = getHeight(index, postItems.length);
      double spacerHeight = getHeight(index + 1, postItems.length);
      double topMargin = postItems[index].topMargin;
      curvedCards.add(
        CurvedPostCard(
          height: height + heightOfAppBar,
          spacerHeight: spacerHeight + heightOfAppBar + topMargin,
          hasFooter: postItems[index].hasFooter,
          body: postItems[index].body,
        ),
      );
    }
    return curvedCards;
  }

  double getHeight(int startIndex, int length) {
    double height = 0.0;
    for (var i = startIndex; i < length; i++) {
      height += curvedPostCardItems[i].height;
    }
    return height;
  }
}
