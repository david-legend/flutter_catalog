import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'menu_1.dart';

class MenuScreen4 extends StatefulWidget {
  @override
  _MenuScreen4State createState() => _MenuScreen4State();
}

class _MenuScreen4State extends State<MenuScreen4> {
  List<MenuItem> menuList = [
    MenuItem(StringConst.BUSINESS, onTap: () {}),
    MenuItem(StringConst.TRENDING, selected: true, onTap: () {}),
    MenuItem(StringConst.HEALTH, onTap: () {}),
    MenuItem(StringConst.MUSIC, onTap: () {}),
    MenuItem(StringConst.SPORTS, onTap: () {}),
    MenuItem(StringConst.LEARNING, onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: SafeArea(
        child: Container(
          width: assignWidth(context: context, fraction: 1.0),
          child: Drawer(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SpaceH20(),
                  Container(
                    padding: const EdgeInsets.all(Sizes.PADDING_16),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.pink50, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(60))),
                    child: Icon(
                      FeatherIcons.trendingUp,
                      color: AppColors.black,
                      size: Sizes.ICON_SIZE_50,
                    ),
                  ),
                  Spacer(),
                  ..._buildMenuList(menuList),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: AppColors.violet400,
                        elevation: Sizes.ELEVATION_0,
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  SpaceH24(),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () => scaffoldKey.currentState.openDrawer(),
            child: Text(StringConst.OPEN_DRAWER),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenuList(List<MenuItem> menuItemList) {
    ThemeData theme = Theme.of(context);
    List<Widget> menuList = [];

    for (int index = 0; index < menuItemList.length; index++) {
      menuList.add(
        Text(
          menuItemList[index].title,
          style: theme.textTheme.subtitle2.copyWith(
            color: menuItemList[index].selected
                ? AppColors.indigo200
                : AppColors.greyShade6,
            fontSize: menuItemList[index].selected
                ? Sizes.TEXT_SIZE_24
                : Sizes.TEXT_SIZE_18,
          ),
        ),
      );
      menuList.add(Spacer());
    }
    return menuList;
  }
}
