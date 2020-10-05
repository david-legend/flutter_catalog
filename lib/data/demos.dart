import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/gallery_widgets.dart';

enum CatalogDemoCategory {
  profile,
  menu,
  onBoarding,
  list,
  settings,
  alertDialogs,
  verification,
  activitiesAndTimeLine,
  login,
  statsAndInformation,
  bottomNavigation,
}

extension CatalogDemoExtension on CatalogDemoCategory {
  String get name => describeEnum(this);

  String displayTitle() {
    switch (this) {
      case CatalogDemoCategory.profile:
        return StringConst.PROFILE;
      case CatalogDemoCategory.menu:
        return StringConst.MENU;
      case CatalogDemoCategory.activitiesAndTimeLine:
        return StringConst.ACTIVITIES_AND_TIMELINE;
      case CatalogDemoCategory.onBoarding:
        return StringConst.ONBOARDING;
      case CatalogDemoCategory.list:
        return StringConst.LISTS;
      case CatalogDemoCategory.settings:
        return StringConst.SETTINGS;
      case CatalogDemoCategory.alertDialogs:
        return StringConst.ALERT_DIALOGS;
      case CatalogDemoCategory.verification:
        return StringConst.VERIFICATION;
      case CatalogDemoCategory.statsAndInformation:
        return StringConst.STATS_AND_INFORMATION;
      case CatalogDemoCategory.bottomNavigation:
        return StringConst.BOTTOM_NAVIGATION;
      case CatalogDemoCategory.login:
        return StringConst.LOGIN;
    }
    return null;
  }
}

class CatalogDemo {
  const CatalogDemo({
    @required this.title,
    @required this.category,
    @required this.subtitle,
    // Parameters below are required for non-study demos.
    this.slug,
    this.routeName,
    this.icon,
  })  : assert(title != null),
        assert(category != null),
        assert(subtitle != null);

  final String title;
  final CatalogDemoCategory category;
  final String subtitle;
  final String slug;
  final String routeName;
  final IconData icon;

  String get describe => '$title@${category.name}';
}

List<CategoryListItem> categoryList() {
  return [
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.profile,
      ),
      category: CatalogDemoCategory.profile,
      imageString: ImagePath.PROFILE,
      demos: profileDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.activitiesAndTimeLine,
      ),
      category: CatalogDemoCategory.activitiesAndTimeLine,
      imageString: ImagePath.LIST,
      demos: activitiesAndTimelineDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.login,
      ),
      category: CatalogDemoCategory.login,
      imageString: ImagePath.LOGIN,
      demos: loginDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.menu,
      ),
      category: CatalogDemoCategory.menu,
      imageString: ImagePath.MENU,
      demos: menuDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.onBoarding,
      ),
      category: CatalogDemoCategory.onBoarding,
      imageString: ImagePath.ONBOARDING,
      demos: onBoardingDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.list,
      ),
      category: CatalogDemoCategory.list,
      imageString: ImagePath.LIST,
      demos: listDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.verification,
      ),
      category: CatalogDemoCategory.verification,
      imageString: ImagePath.VERIFICATION,
      demos: verificationDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.statsAndInformation,
      ),
      category: CatalogDemoCategory.statsAndInformation,
      imageString: ImagePath.STATS_INFORMATION,
      demos: statsAndInformationDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.settings,
      ),
      category: CatalogDemoCategory.settings,
      imageString: ImagePath.SETTINGS,
      demos: settingsDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.bottomNavigation,
      ),
      category: CatalogDemoCategory.bottomNavigation,
      imageString: ImagePath.BOTTOM_NAVIGATION,
      demos: bottomNavigationDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.alertDialogs,
      ),
      category: CatalogDemoCategory.alertDialogs,
      imageString: ImagePath.ALERT_DIALOGS,
      demos: alertDialogsDemos(),
      initiallyExpanded: false,
    ),
  ];
}

List<CatalogDemo> profileDemos() {
  return [
    CatalogDemo(
      title: "Profile 1",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile1Screen,
    ),
    CatalogDemo(
      title: "Profile 2",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile2Screen,
    ),
    CatalogDemo(
      title: "Profile 3",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile3Screen,
    ),
    CatalogDemo(
      title: "Profile 4",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile4Screen,
    ),
  ];
}

List<CatalogDemo> activitiesAndTimelineDemos() {
  return [
    CatalogDemo(
      title: "TimeLine 1",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.timeLine,
    ),
    CatalogDemo(
      title: "Activity 1",
      icon: Icons.person,
      slug: 'Activity',
      subtitle: "Activity Screen Design",
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen,
    ),
    CatalogDemo(
      title: "Activity 2",
      icon: Icons.person,
      slug: 'Activity2',
      subtitle: "Activity Screen 2 Design",
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen2,
    ),
    CatalogDemo(
      title: "Activity 3",
      icon: Icons.person,
      slug: 'Activity3',
      subtitle: "Activity Screen 3 Design",
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen3,
    ),
  ];
}

List<CatalogDemo> menuDemos() {
  return [];
}

List<CatalogDemo> onBoardingDemos() {
  return [];
}

List<CatalogDemo> listDemos() {
  return [];
}

List<CatalogDemo> settingsDemos() {
  return [];
}

List<CatalogDemo> alertDialogsDemos() {
  return [];
}

List<CatalogDemo> verificationDemos() {
  return [];
}

List<CatalogDemo> loginDemos() {
  return [
    CatalogDemo(
      title: "Login Design 1",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen1,
    ),
    CatalogDemo(
      title: "Login Design 1",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen2,
    ),
    CatalogDemo(
      title: "Login Design 5",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen3,
    ),
    CatalogDemo(
      title: "Login Design 6",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen4,
    ),
    CatalogDemo(
      title: "Login Design 7",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen5,
    ),
    CatalogDemo(
      title: "Login Design 6",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen6,
    ),
    CatalogDemo(
      title: "Login Design 7",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.registerScreen7,
    ),
    CatalogDemo(
      title: "Login Design 8",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen8,
    ),
    CatalogDemo(
      title: "Login Design 9",
      icon: Icons.person,
      slug: 'banner',
      subtitle: "beautifully designed category",
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen9,
    ),
  ];
}

List<CatalogDemo> statsAndInformationDemos() {
  return [];
}

List<CatalogDemo> bottomNavigationDemos() {
  return [];
}
