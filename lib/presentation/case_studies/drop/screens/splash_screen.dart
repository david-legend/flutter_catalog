import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/case_studies/drop/widgets/drop_logo.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

class DropSplashScreen extends StatefulWidget {
  @override
  _DropSplashScreenState createState() => _DropSplashScreenState();
}

class _DropSplashScreenState extends State<DropSplashScreen> {
  @override
  void initState() {
    super.initState();
    run();
  }

  void run() {
    Future.delayed(Duration(milliseconds: 1000), () {
      ExtendedNavigator.root.pushAndRemoveUntil(
        Routes.authScreen,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: DropLogo(
          width: 200,
          height: 200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.RADIUS_20),
            bottomLeft: Radius.circular(Sizes.RADIUS_20),
            bottomRight: Radius.circular(Sizes.RADIUS_100),
            topRight: Radius.circular(Sizes.RADIUS_100),
          ),
        ),
      )),
    );
  }
}
