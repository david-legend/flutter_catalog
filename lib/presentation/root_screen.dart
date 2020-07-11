import 'package:flutter/material.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CurvedAppBar(
            title: StringConst.APP_NAME,
          ),
        ],
      ),
    );
  }
}
