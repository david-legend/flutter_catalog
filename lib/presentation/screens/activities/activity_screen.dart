import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/curved_post_card.dart';

import 'package:functional_widget_annotation/functional_widget_annotation.dart';

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
                    StringConst.ACTIVITY_1,
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
        backgroundColor: AppColors.pink50,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }

  @widget
  List<Widget> _buildCurvedCards(List<PostItem> postItems) {
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);
    List<Widget> curvedCards = [];

    for (var index = 0; index < postItems.length; index++) {
      /// gets the height of all the postItems that have not been rendered including the
      /// one about to be rendered and sums the up.
      double height = getHeight(index, postItems.length);

      /// gets the spacing height of all the postItems that have not been rendered
      double spacerHeight = getHeight(index + 1, postItems.length);
      double topMargin = postItems[index].topMargin;

      ///height of a post card is the sum of the height of the Appbar and height of all postItems
      ///that have not been rendered yet.
      ///This is because: since the postCards are being rendered inside a stack, the longest of them all
      ///will be rendered first, followed by the second longest, which will be on top of the previous one that
      ///was rendered. Hence we need to know the height of all the cards so that we can allocate space.
      ///
      ///SpacerHeight is used to allocate sapce on top of actual text or design
      curvedCards.add(
        CurvedPostCard(
          height: height + heightOfAppBar,
          spacerHeight: spacerHeight + heightOfAppBar + topMargin,
          hasFooter: postItems[index].hasFooter,
          body: postItems[index].body,
          backgroundColor: postItems[index].backgroundColor,
          bodyTextColor: postItems[index].bodyTextColor,
          footerIconColor: postItems[index].footerIconColor,
        ),
      );
    }
    return curvedCards;
  }

  /// gets the height of all the postItems that have not been rendered including the
  /// one about to be rendered and sums the up.
  double getHeight(int startIndex, int length) {
    double height = 0.0;
    for (var i = startIndex; i < length; i++) {
      height += curvedPostCardItems[i].height;
    }
    return height;
  }
}
