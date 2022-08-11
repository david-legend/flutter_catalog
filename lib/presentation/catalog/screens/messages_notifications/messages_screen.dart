import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/curved_list_tile.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

List<PostListTileItem> curvedPostTileItems = [
  // PostListTileItem(),
];

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double heightOfAppBar = assignHeight(context: context, fraction: 0.2);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(children: [
                CurvedListTile(
                  child: Container(),
                  backgroundColor: Colors.black,
                )
              ]
//                _buildCurvedListTile(curvedPostCardItems),
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

              AutoRouter.of(context).pop();
            },
            title: Padding(
              padding: const EdgeInsets.only(
                left: Sizes.PADDING_44,
                top: Sizes.PADDING_16,
              ),
              child: Column(
                children: [
                  Text(
                    StringConst.MESSAGES,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineMedium?.copyWith(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//   @swidget
//   List<Widget> _buildCurvedCards(List<PostListTileItem> postListTileItems) {
//     double heightOfAppBar = assignHeight(context: context, fraction: 0.2);
//     List<Widget> curvedCards = [];
//
//     for (var index = 0; index < postListTileItems.length; index++) {
//       double height = getHeight(index, postListTileItems.length);
//
//       double spacerHeight = getHeight(index + 1, postListTileItems.length);
//       double topMargin = postListTileItems[index].topMargin;
//
//       curvedCards.add(
//         CurvedListTile(
//           height: height + heightOfAppBar,
// //          spacerHeight: spacerHeight + heightOfAppBar + topMargin,
// //          hasFooter: postListTileItems[index].hasFooter,
// //          body: postListTileItems[index].body,
// //          backgroundColor: postListTileItems[index].backgroundColor,
// //          bodyTextColor: postListTileItems[index].bodyTextColor,
// //          footerIconColor: postListTileItems[index].footerIconColor,
//         ),
//       );
//     }
//     return curvedCards;
//   }

  /// gets the height of all the postItems that have not been rendered including the
  /// one about to be rendered and sums the up.
  double getHeight(int startIndex, int length) {
    double height = 0.0;
    for (var i = startIndex; i < length; i++) {
      height += curvedPostTileItems[i].height;
    }
    return height;
  }
}
