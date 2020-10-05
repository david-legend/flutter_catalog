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
    height: 250,
    body: null,
    backgroundColor: AppColors.violet400,
    bodyTextColor: AppColors.purple10,
    profileImagePath: ImagePath.ABDULLAH,
    headerTitle: StringConst.ABDULLAH_HADLEY,
    headerSubTitle: StringConst.DATE,
    hasHeader: true,
  ),
  PostItem(
    height: 250,
    body: null,
    backgroundColor: AppColors.pink50,
    bodyTextColor: AppColors.white,
    footerIconColor: AppColors.white,
    profileImagePath: ImagePath.JACK_SNOW,
    headerTitle: StringConst.JACK_SNOW,
    headerSubTitle: StringConst.DATE,
    hasHeader: true,
  ),
  PostItem(
    height: 250,
    body: null,
    backgroundColor: AppColors.violet400,
    bodyTextColor: AppColors.purple10,
    profileImagePath: ImagePath.MARCUS,
    headerTitle: StringConst.MARCUS_BROWNLEE,
    headerSubTitle: StringConst.DATE,
    hasHeader: true,
  ),
];

class ActivityScreen3 extends StatefulWidget {
  @override
  _ActivityScreen3State createState() => _ActivityScreen3State();
}

class _ActivityScreen3State extends State<ActivityScreen3> {
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
            backgroundColor: AppColors.violet400,
            hasTrailing: true,
            iconColor: AppColors.white,
            height: heightOfAppBar,
            bottomLeftRadius: Sizes.RADIUS_80,
            crossAxisAlignment: CrossAxisAlignment.start,
            boxShadow: Shadows.containerShadow2,
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
                    StringConst.ACTIVITY_3,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headline5.copyWith(
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
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
          hasHeader: postItems[index].hasHeader,
          hasFooter: postItems[index].hasFooter,
          shadow: Shadows.containerShadow2,
          profileImagePath: postItems[index].profileImagePath,
          headerTitle: postItems[index].headerTitle,
          headerSubTitle: postItems[index].headerSubTitle,
          body: postItems[index].body,
          backgroundColor: postItems[index].backgroundColor,
          bodyTextColor: postItems[index].bodyTextColor,
          footerIconColor: postItems[index].footerIconColor,
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
