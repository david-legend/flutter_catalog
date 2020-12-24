import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

import 'menu_1.dart';

class MenuScreen4 extends StatefulWidget {
  @override
  _MenuScreen4State createState() => _MenuScreen4State();
}

class _MenuScreen4State extends State<MenuScreen4> {
  List<MenuItem> menuList = [
    MenuItem(StringConst.HOME, FeatherIcons.home, onTap: () {}),
    MenuItem(StringConst.MEET_UPS, FeatherIcons.users, onTap: () {}),
    MenuItem(StringConst.EVENTS, FeatherIcons.calendar, onTap: () {}),
    MenuItem(StringConst.CONTACT_US, FeatherIcons.user, onTap: () {}),
    MenuItem(StringConst.ABOUT_US, FeatherIcons.info, onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        width: assignWidth(context: context, fraction: 1.0),
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.violet400,
            ),
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    height: assignHeight(context: context, fraction: 0.3),
                    child: _buildDrawerHeader(),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.violet400,
                  ),
                ),
                ..._buildMenuList(menuList),
                Spacer(),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: AppColors.purple10,
                  ),
                  title: Text(
                    StringConst.LOG_OUT,
                    style: theme.textTheme.subtitle2.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  onTap: () {},
                ),
                SpaceH30(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () => scaffoldKey.currentState.openDrawer(),
            child: Text(
              "OPEN", /**StringConst.OPEN_DRAWER**/
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: assignWidth(context: context, fraction: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImagePath.BOB,
                fit: BoxFit.cover,
              ),
              SpaceH8(),
              Text(
                StringConst.SALOMAN,
                style: theme.textTheme.subtitle1.copyWith(
                  color: AppColors.white,
                ),
              ),
              Text(
                StringConst.SALOMAN_USERNAME,
                style: theme.textTheme.bodyText2.copyWith(
                  color: AppColors.purple10,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Widget> _buildMenuList(List<MenuItem> menuItemList) {
    ThemeData theme = Theme.of(context);
    List<Widget> menuList = [];

    for (int index = 0; index < menuItemList.length; index++) {
      menuList.add(
        ListTile(
          leading: Icon(
            menuItemList[index].iconData,
            color: AppColors.purple10,
          ),
          title: Text(
            menuItemList[index].title,
            style: theme.textTheme.subtitle2.copyWith(
              color: AppColors.white,
            ),
          ),
          onTap: menuItemList[index].onTap,
        ),
      );
    }
    return menuList;
  }
}
