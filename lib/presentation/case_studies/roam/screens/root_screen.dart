import 'package:flutter/material.dart';

import 'package:animations/animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercatalog/presentation/case_studies/roam/widgets/spaces.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'discover_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'saved_places_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RootScreenState();
  }
}

class _RootScreenState extends State<RootScreen> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    DiscoverScreen(),
    SavedPlacesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageTransitionSwitcher(
        transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(Sizes.RADIUS_30),
        topRight: const Radius.circular(Sizes.RADIUS_30),
      ),
      child: BottomNavigationBar(
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: selectedIndex,
        selectedItemColor: RoamAppColors.accentColor,
        unselectedItemColor: RoamAppColors.grey,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              RoamImagePath.HOME,
              color: RoamAppColors.grey,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: SvgPicture.asset(
                RoamImagePath.HOME,
                color: RoamAppColors.accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              RoamImagePath.SUITCASE,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: SvgPicture.asset(
                RoamImagePath.SUITCASE,
                color: RoamAppColors.accentColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidHeart),
            label: "",
            activeIcon: ActiveIcon(icon: FontAwesomeIcons.solidHeart),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              RoamImagePath.KRISTIN_SM,
            ),
            label: "",
            activeIcon: ActiveIcon(
              hasIcon: false,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: RoamAppColors.accentColor,
                    width: Sizes.WIDTH_2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(Sizes.RADIUS_20),
                  ),
                ),
                child: Image.asset(
                  RoamImagePath.KRISTIN_SM,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ActiveIcon extends StatelessWidget {
  ActiveIcon({this.icon, this.hasIcon = true, this.child})
      : assert((hasIcon && icon != null) || (!hasIcon && child != null));

  final IconData? icon;
  final bool hasIcon;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          hasIcon ? Icon(icon) : child!,
          SpaceH8(),
          Container(
            width: Sizes.WIDTH_4,
            height: Sizes.HEIGHT_4,
            decoration: BoxDecoration(
              color: RoamAppColors.accentColor,
              borderRadius: const BorderRadius.all(
                const Radius.circular(Sizes.RADIUS_8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
