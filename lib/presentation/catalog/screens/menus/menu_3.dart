import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';

import 'menu_1.dart';

class MenuScreen3 extends StatefulWidget {
  @override
  _MenuScreen3State createState() => _MenuScreen3State();
}

class _MenuScreen3State extends State<MenuScreen3> {
  List<CatalogMenuItem> menuList = [
    CatalogMenuItem(
      StringConst.HOME,
      iconData: FeatherIcons.home,
      onTap: () {},
    ),
    CatalogMenuItem(
      StringConst.MEET_UPS,
      iconData: FeatherIcons.users,
      onTap: () {},
    ),
    CatalogMenuItem(
      StringConst.EVENTS,
      iconData: FeatherIcons.calendar,
      selected: true,
      onTap: () {},
    ),
    CatalogMenuItem(
      StringConst.CONTACT_US,
      iconData: FeatherIcons.user,
      onTap: () {},
    ),
    CatalogMenuItem(
      StringConst.ABOUT_US,
      iconData: FeatherIcons.info,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.violet400,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DrawerHeader(
                padding: const EdgeInsets.fromLTRB(
                  Sizes.PADDING_24,
                  Sizes.PADDING_16,
                  Sizes.PADDING_16,
                  Sizes.PADDING_8,
                ),
                child: Container(
                  height: assignHeight(context: context, fraction: 0.3),
                  child: _buildDrawerHeader(),
                ),
                decoration: BoxDecoration(
                  color: AppColors.violet400,
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
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.purple10,
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
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            child: Text(
              StringConst.OPEN_DRAWER, /**StringConst.OPEN_DRAWER**/
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
              ClipRRect(
                borderRadius: BorderRadius.all(
                  const Radius.circular(Sizes.RADIUS_60),
                ),
                child: Image.asset(
                  ImagePath.BOB,
                  fit: BoxFit.cover,
                ),
              ),
              SpaceH8(),
              Text(
                StringConst.SALOMAN,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: AppColors.purple10,
                ),
              ),
              Text(
                StringConst.SALOMAN_USERNAME,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.purple10,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  List<Widget> _buildMenuList(List<CatalogMenuItem> menuItemList) {
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
                    ? AppColors.purple10
                    : AppColors.purple50,
              ),
              title: Text(
                menuItemList[index].title,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: AppColors.purple10,
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
