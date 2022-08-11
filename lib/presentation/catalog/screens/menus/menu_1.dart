import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';

class CatalogMenuItem {
  CatalogMenuItem(this.title, {this.iconData, this.onTap, this.route, this.selected = false});

  final String title;
  final IconData? iconData;
  final GestureTapCallback? onTap;
  final PageRouteInfo? route;
  final bool selected;
}

class MenuScreen1 extends StatefulWidget {
  @override
  _MenuScreen1State createState() => _MenuScreen1State();
}

class _MenuScreen1State extends State<MenuScreen1> {
  List<CatalogMenuItem> menuList = [
    CatalogMenuItem(StringConst.HOME, iconData: FeatherIcons.home, onTap: () {}),
    CatalogMenuItem(StringConst.MEET_UPS, iconData: FeatherIcons.users, onTap: () {}),
    CatalogMenuItem(StringConst.EVENTS, iconData: FeatherIcons.calendar, onTap: () {}),
    CatalogMenuItem(StringConst.CONTACT_US, iconData: FeatherIcons.user, onTap: () {}),
    CatalogMenuItem(StringConst.ABOUT_US, iconData: FeatherIcons.info, onTap: () {}),
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
              color: AppColors.violet400,
            ),
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  margin: const EdgeInsets.all(Sizes.MARGIN_0),
                  padding: const EdgeInsets.all(Sizes.PADDING_0),
                  child: _buildDrawerHeader(),
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
                    style: theme.textTheme.titleMedium?.copyWith(
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
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
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
                style: theme.textTheme.titleLarge?.copyWith(
                  color: AppColors.white,
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
        ListTile(
          leading: Icon(
            menuItemList[index].iconData,
            color: AppColors.purple10,
          ),
          title: Text(
            menuItemList[index].title,
            style: theme.textTheme.titleMedium?.copyWith(
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
