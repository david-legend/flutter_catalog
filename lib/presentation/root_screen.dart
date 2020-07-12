import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/curved_app_bar.dart';
import 'package:fluttercatalog/widgets/curved_list_tile.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CurvedListTile(
            height: assignHeight(context: context, fraction: 0.90),
            backgroundColor: Colors.lightGreenAccent,
            child: Text(
              "EHEY",
              style: TextStyle(color: Colors.black),
            ),
          ),
          CurvedListTile(
            height: assignHeight(context: context, fraction: 0.75),
            backgroundColor: Colors.orange,
            child: Text(
              "EHEY",
              style: TextStyle(color: Colors.black),
            ),
          ),
          CurvedListTile(
            height: assignHeight(context: context, fraction: 0.60),
            backgroundColor: Colors.yellow,
            child: Text(
              "EHEY",
              style: TextStyle(color: Colors.black),
            ),
          ),
          CurvedListTile(
            height: assignHeight(context: context, fraction: 0.45),
            backgroundColor: Colors.green,
            child: Text(
              "EHEY",
              style: TextStyle(color: Colors.black),
            ),
          ),
          CurvedListTile(
            height: assignHeight(context: context, fraction: 0.30),
            backgroundColor: Colors.blueAccent,
            child: Text(
              "EHEY",
              style: TextStyle(color: Colors.black),
            ),
          ),
          CurvedAppBar(
            title: StringConst.APP_NAME,
          ),
        ],
      ),
    );
  }
}
