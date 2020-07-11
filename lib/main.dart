import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/app_theme.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

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
      builder: ExtendedNavigator<Router>(
        router: Router(),
        initialRoute: Routes.rootScreen,
      ),
    );
  }
}
