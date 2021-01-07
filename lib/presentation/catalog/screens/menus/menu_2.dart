import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';

import 'menu_1.dart';

class MenuScreen2 extends StatefulWidget {
  @override
  _MenuScreen2State createState() => _MenuScreen2State();
}

class _MenuScreen2State extends State<MenuScreen2> {
  List<MenuItem> menuList = [
    MenuItem(
      StringConst.HOME,
      iconData: FeatherIcons.home,
      selected: false,
      onTap: () {},
    ),
    MenuItem(
      StringConst.MEET_UPS,
      iconData: FeatherIcons.users,
      selected: false,
      onTap: () {},
    ),
    MenuItem(
      StringConst.EVENTS,
      iconData: FeatherIcons.calendar,
      selected: true,
      onTap: () {},
    ),
    MenuItem(
      StringConst.CONTACT_US,
      iconData: FeatherIcons.user,
      selected: false,
      onTap: () {},
    ),
    MenuItem(
      StringConst.ABOUT_US,
      iconData: FeatherIcons.info,
      selected: false,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(Sizes.RADIUS_60),
          bottomRight: const Radius.circular(Sizes.RADIUS_60),
        ),
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(Sizes.RADIUS_60),
                  ),
                  child: DrawerHeader(
                    margin: const EdgeInsets.all(Sizes.MARGIN_0),
                    padding: const EdgeInsets.only(left: Sizes.PADDING_8),
                    child: Container(
                      height: assignHeight(context: context, fraction: 0.3),
                      child: _buildDrawerHeader(),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.violet400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.PADDING_8),
                  child: Column(
                    children: _buildMenuList(menuList),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: Sizes.PADDING_8),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: AppColors.purple10,
                    ),
                    title: Text(
                      StringConst.LOG_OUT,
                      style: theme.textTheme.subtitle2.copyWith(
                        color: AppColors.violet400,
                      ),
                    ),
                    onTap: () {},
                  ),
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
            child: Text(StringConst.OPEN_DRAWER),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader() {
    ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          ImagePath.YOGA_3,
          width: assignWidth(context: context, fraction: 1),
          height: assignHeight(context: context, fraction: 1),
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(
            Sizes.PADDING_16,
            Sizes.PADDING_16,
            Sizes.PADDING_16,
            Sizes.PADDING_8,
          ),
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
        ClipRRect(
          borderRadius: BorderRadius.all(
            const Radius.circular(Sizes.RADIUS_60),
          ),
          child: Container(
            width: assignWidth(context: context, fraction: 0.45),
            child: ListTile(
              selected: menuItemList[index].selected,
              selectedTileColor: AppColors.primaryColor,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Sizes.PADDING_16,
              ),
              leading: Icon(
                menuItemList[index].iconData,
                color: menuItemList[index].selected
                    ? AppColors.white
                    : AppColors.purple10,
              ),
              title: Text(
                menuItemList[index].title,
                style: theme.textTheme.subtitle2.copyWith(
                  color: menuItemList[index].selected
                      ? AppColors.white
                      : AppColors.violet400,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 4),
                borderRadius: BorderRadius.all(
                  const Radius.circular(Sizes.RADIUS_80),
                ),
              ),
              onTap: menuItemList[index].onTap,
            ),
          ),
        ),
      );
    }
    return menuList;
  }
}
