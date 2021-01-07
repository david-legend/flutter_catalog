import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/sheet_item.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class BottomSheet4 extends StatefulWidget {
  @override
  _BottomSheet4State createState() => _BottomSheet4State();
}

class _BottomSheet4State extends State<BottomSheet4> {
  List<SheetItemData> sheetItems;
  Radius borderRadius = const Radius.circular(Sizes.RADIUS_60);

  @override
  Widget build(BuildContext context) {
    sheetItems = [
      SheetItemData(
        height: assignHeight(context: context, fraction: 0.125),
        hasTitle: false,
        hasContent: false,
        action: StringConst.CANCEL,
        onActionTap: () => closeDialog(),
      ),
      SheetItemData(
        height: assignHeight(context: context, fraction: 0.125),
        hasTitle: false,
        hasContent: false,
        action: StringConst.MAYBE,
        onActionTap: () => closeDialog(),
      ),
      SheetItemData(
        height: assignHeight(context: context, fraction: 0.25),
        title: StringConst.ARE_YOU_SURE,
        content: StringConst.LOREM_IPSUM,
        action: StringConst.YES,
        onActionTap: () => closeDialog(),
      ),
    ];

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
    return Container(
      height: assignHeight(context: context, fraction: 0.5),
      decoration: BoxDecoration(
        color: AppColors.violet400,
        borderRadius: BorderRadius.only(
          topLeft: borderRadius,
        ),
      ),
      child: Stack(
        children: _buildSheetItems(sheetItems),
      ),
    );
  }

  void closeDialog() {
    ExtendedNavigator.root.pop();
  }

  List<Widget> _buildSheetItems(List<SheetItemData> sheetItems) {
    List<Widget> items = [];
    ThemeData theme = Theme.of(context);
    TextStyle titleTextStyle = theme.textTheme.headline6.copyWith(
      color: AppColors.white,
    );
//    TextStyle contentStyle = theme.textTheme.bodyText1.copyWith(
//      color: AppColors.purple100,
//    );
    TextStyle actionTextStyle = theme.textTheme.subtitle1.copyWith(
      color: AppColors.white,
    );
    for (var index = 0; index < sheetItems.length; index++) {
      double height = getHeight(index, sheetItems.length);
      items.add(
        SheetItem(
          backgroundColor: AppColors.violet400,
          height: height,
          hasTitle: sheetItems[index].hasTitle,
          title: sheetItems[index].title,
          hasContent: sheetItems[index].hasContent,
          content: sheetItems[index].content,
          hasAction: sheetItems[index].hasAction,
          action: sheetItems[index].action,
          borderRadius: sheetItems[index].borderRadius,
          onActionTap: sheetItems[index].onActionTap,
          titleTextStyle: titleTextStyle,
          actionTextStyle: actionTextStyle,
          shadow: Shadows.customContainerShadow(
            color: AppColors.grey,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
          ),
        ),
      );
    }

    return items;
  }

  double getHeight(int startIndex, int length) {
    double height = 0.0;
    for (var i = startIndex; i < length; i++) {
      height += sheetItems[i].height;
    }
    return height;
  }
}
