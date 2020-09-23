import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/curved_post_card.dart';

import 'package:functional_widget_annotation/functional_widget_annotation.dart';

//TODO:: clean up code
//TODO:: Add other screens
//TODO:: -- Updates Screen (with those cool colors)
//TODO:: -- Updates2 Screen(with those cool colors)
//TODO:: -- Updates3 Screen(with those cool colors)

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
//              SizedBox(
//                height: heightOfAppBar,
//              ),
              _buildListCards(context),
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
  Widget _buildListCards(BuildContext context) {
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);

    //height = height of previous item + your height
    //Spacerheight = height of previous item
    return Stack(
      children: [
        CurvedPostCard(
          height: 200 + 260 + 200 + heightOfAppBar,
          spacerHeight: 260 + 200 + heightOfAppBar,
        ),
        CurvedPostCard(
          height: 260 + 200 + heightOfAppBar,
          spacerHeight: 200 + heightOfAppBar + 40,
          hasFooter: false,
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
        ),
        CurvedPostCard(
          height: 200 + heightOfAppBar,
          spacerHeight: heightOfAppBar,
        ),
      ],
    );
  }
}
