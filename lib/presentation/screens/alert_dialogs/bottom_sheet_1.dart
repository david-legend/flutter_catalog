import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';
import 'package:fluttercatalog/widgets/container_handle.dart';
import 'package:fluttercatalog/widgets/custom_button.dart';
import 'package:fluttercatalog/widgets/spaces.dart';

class BottomSheet1 extends StatefulWidget {
  @override
  _BottomSheet1State createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  int guests = 1;

  @override
  Widget build(BuildContext context) {
    Radius borderRadius = const Radius.circular(Sizes.RADIUS_60);
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: borderRadius,
                  ),
                ),
                builder: (_) => _buildBottomSheet(context),
              );
            },
            child: Text(StringConst.SHOW_BOTTOM_SHEET),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          padding: const EdgeInsets.only(
            top: Sizes.PADDING_12,
            left: Sizes.PADDING_24,
            right: Sizes.PADDING_24,
            bottom: Sizes.PADDING_16,
          ),
          height: assignHeight(context: context, fraction: 0.4),
          child: Column(
            children: [
              ContainerHandle(),
              Spacer(),
              Text(
                StringConst.BRING_GUEST,
                style: theme.textTheme.headline6,
              ),
              SpaceH16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      if (guests > 0) {
                        setState(() {
                          guests -= 1;
                        });
                      }
                    },
                    child: Icon(Icons.remove),
                  ),
                  Text(
                    "$guests",
                    style: theme.textTheme.bodyText1.copyWith(fontSize: 28),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        guests += 1;
                      });
                    },
                    backgroundColor: AppColors.indigo100,
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
              Spacer(),
              CustomButton(
                title: StringConst.NEXT,
                color: AppColors.primaryColor,
                textStyle: theme.textTheme.subtitle2.copyWith(
                  color: AppColors.white,
                ),
                onPressed: () => closeDialog(),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }

  void closeDialog() {
    ExtendedNavigator.root.pop();
  }
}
