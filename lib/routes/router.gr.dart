// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';
import 'package:fluttercatalog/presentation/screens/profile/profile_1.dart';

class Routes {
  static const String rootScreen = '/';
  static const String profile1Screen = '/profile1-screen';
  static const all = <String>{
    rootScreen,
    profile1Screen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
    RouteDef(Routes.profile1Screen, page: Profile1Screen),
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
  };
}
