import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/category_card.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_appbar.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/product_deal_card.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/section_heading_2.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        width: assignWidth(context: context, fraction: 1.0),
        child: Drawer(
          child: Container(
            margin: EdgeInsets.only(
              left: Sizes.PADDING_24,
              top: Sizes.PADDING_32,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DropAppBar(
                  leading: InkWell(
                    onTap: () {
                      ExtendedNavigator.root.pop();
                    },
                    child: Icon(
                      FeatherIcons.x,
                      color: AppColors.primaryColor,
                      size: Sizes.ICON_SIZE_30,
                    ),
                  ),
                ),
                Spacer(flex: 2),
                ..._buildMenuList(DropData.menuItems),
                Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(
            left: Sizes.PADDING_24,
            top: Sizes.PADDING_32,
            bottom: Sizes.PADDING_24,
          ),
          children: [
            PreferredSize(
              preferredSize: Size.fromHeight(Sizes.HEIGHT_56),
              child: DropAppBar(
                onLeadingTap: () => _openDrawer(),
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.NEW_ARRIVALS,
              title2: DropStringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.newArrivalItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(
                    title: DropData.newArrivalItems[index].title,
                    subtitle: DropData.newArrivalItems[index].subtitle,
                    subtitleColor:
                        DropData.newArrivalItems[index].subtitleColor,
                    imagePath: DropData.newArrivalItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.TRENDING_NOW,
              title2: DropStringConst.SEE_ALL,
            ),
            SpaceH8(),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.trendingItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: DropData.trendingItems[index].title,
                    subtitle: DropData.trendingItems[index].subtitle,
                    price: DropData.trendingItems[index].price,
                    imagePath: DropData.trendingItems[index].imagePath,
                  );
                },
              ),
            ),
            SpaceH20(),
            SectionHeading2(
              title1: DropStringConst.EXPLORE,
              title2: DropStringConst.SEE_ALL,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: DropData.exploreItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SpaceW8();
                },
                itemBuilder: (BuildContext context, int index) {
                  return ProductDealCard(
                    title: DropData.exploreItems[index].title,
                    subtitle: DropData.exploreItems[index].subtitle,
                    price: DropData.exploreItems[index].price,
                    imagePath: DropData.exploreItems[index].imagePath,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openDrawer() {
    scaffoldKey.currentState.openDrawer();
  }

  Widget _buildDrawerItem({
    @required String title,
    Color textColor,
    String routeName,
  }) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () {
        if (routeName != null) {
          if (routeName == Routes.homeScreen) {
            ExtendedNavigator.root.pop();
          } else {
            ExtendedNavigator.root.push(routeName);
          }
        }
      },
      child: Text(
        title,
        style: theme.textTheme.headline4.copyWith(color: textColor),
      ),
    );
  }

  List<Widget> _buildMenuList(List<MenuItem> menuList) {
    List<Widget> items = [];

    for (int index = 0; index < menuList.length; index++) {
      items.add(
        _buildDrawerItem(
          title: menuList[index].title,
          textColor: menuList[index].textColor,
          routeName: menuList[index].routeName,
        ),
      );
      items.add(Spacer());
    }
    return items;
  }
}
