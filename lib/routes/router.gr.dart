// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_1.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_2.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_3.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_4.dart';
import 'package:fluttercatalog/presentation/screens/activities/timeline.dart';

class Routes {
  static const String rootScreen = '/';
  static const String profile1Screen = '/profile1-screen';
  static const String profile2Screen = '/profile2-screen';
  static const String profile3Screen = '/profile3-screen';
  static const String profile4Screen = '/profile4-screen';
  static const String timeLine = '/time-line';
  static const all = <String>{
    rootScreen,
    profile1Screen,
    profile2Screen,
    profile3Screen,
    profile4Screen,
    timeLine,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.profile1Screen, page: Profile1Screen),
    RouteDef(Routes.profile2Screen, page: Profile2Screen),
    RouteDef(Routes.profile3Screen, page: Profile3Screen),
    RouteDef(Routes.profile4Screen, page: Profile4Screen),
    RouteDef(Routes.timeLine, page: TimeLine),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootScreen: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootScreen(),
        settings: data,
      );
    },
    Profile1Screen: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile1Screen(),
        settings: data,
      );
    },
    Profile2Screen: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile2Screen(),
        settings: data,
      );
    },
    Profile3Screen: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile3Screen(),
        settings: data,
      );
    },
    Profile4Screen: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile4Screen(),
        settings: data,
      );
    },
    TimeLine: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TimeLine(),
        settings: data,
      );
    },
  };
}
