import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/custom_button.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/spaces.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class AlertDialog2 extends StatelessWidget {
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
          topRight: borderRadius,
          bottomLeft: borderRadius,
        ),
      ),
      elevation: Sizes.ELEVATION_8,
      child: Container(
        padding: const EdgeInsets.all(Sizes.MARGIN_30),
        height: assignHeight(context: context, fraction: 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConst.ARE_YOU_SURE,
              style: theme.textTheme.headlineSmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            SpaceH8(),
            Text(
              StringConst.LOREM_IPSUM,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.purple50,
              ),
            ),
            Spacer(),
            CustomButton(
              title: StringConst.YES,
              height: Sizes.HEIGHT_44,
              textStyle: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.white,
              ),
              color: AppColors.primaryColor,
              onPressed: () => closeDialog(context),
            ),
            SpaceH8(),
            CustomButton(
              title: StringConst.MAYBE,
              height: Sizes.HEIGHT_44,
              color: AppColors.pink50,
              textStyle: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.white,
              ),
              onPressed: () => closeDialog(context),
            ),
            SpaceH8(),
            CustomButton(
              title: StringConst.CANCEL,
              height: Sizes.HEIGHT_44,
              color: AppColors.purple100,
              textStyle: theme.textTheme.titleMedium?.copyWith(
                color: AppColors.white,
              ),
              onPressed: () => closeDialog(context),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void closeDialog(BuildContext context) {
    AutoRouter.of(context).pop();
  }
}
