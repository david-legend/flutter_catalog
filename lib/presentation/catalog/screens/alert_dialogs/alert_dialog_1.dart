import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class AlertDialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => _buildDialog(context),
              );
            },
            child: Text(StringConst.SHOW_ALERT),
          ),
        ),
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Radius borderRadius = const Radius.circular(Sizes.RADIUS_60);
    return Dialog(
      backgroundColor: AppColors.violet400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: borderRadius,
          topRight: borderRadius,
          bottomLeft: borderRadius,
        ),
      ),
      elevation: Sizes.ELEVATION_8,
      child: Container(
        padding: const EdgeInsets.all(Sizes.MARGIN_30),
        height: assignHeight(context: context, fraction: 0.33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConst.HOLD_ON,
              style: theme.textTheme.headline6.copyWith(
                color: AppColors.white,
              ),
            ),
            SpaceH8(),
            Text(
              StringConst.LOREM_IPSUM,
              style: theme.textTheme.bodyText2.copyWith(
                color: AppColors.purple50,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  title: StringConst.SKIP,
                  height: Sizes.HEIGHT_44,
                  textStyle: theme.textTheme.subtitle2.copyWith(
                    color: AppColors.white,
                  ),
                  color: AppColors.purple100,
                  onPressed: () => closeDialog(),
                ),
                SpaceW8(),
                CustomButton(
                  title: StringConst.NEXT,
                  height: Sizes.HEIGHT_44,
                  color: AppColors.primaryColor,
                  textStyle: theme.textTheme.subtitle2.copyWith(
                    color: AppColors.white,
                  ),
                  onPressed: () => closeDialog(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void closeDialog() {
    ExtendedNavigator.root.pop();
  }
}
