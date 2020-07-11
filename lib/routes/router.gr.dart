// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';

class Routes {
  static const String rootScreen = '/';
  static const all = <String>{
    rootScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootScreen, page: RootScreen),
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
  };
}
