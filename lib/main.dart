import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/app_theme.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

//TODO:: Module name: "OnBoarding": First 8 screens
//TODO:: Module name: "Menus":
//TODO:: Module name: "Messages & Notifications" Add 1. Messages 2. Notifications 3. Categories
//TODO:: Module name: "Chats" Add 1. Messages chat 2. Chats  --> maybe
//TODO:: Module name: find UI for settings or probably ignore it 


void main() {
  runApp(FlutterCatalog());
}

class FlutterCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConst.APP_NAME,
      theme: AppTheme.lightThemeData,
      builder: ExtendedNavigator<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.rootScreen,
      ),
    );
  }
}
