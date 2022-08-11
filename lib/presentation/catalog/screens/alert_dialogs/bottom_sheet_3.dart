import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/sheet_item.dart';
import 'package:fluttercatalog/presentation/layout/adaptive.dart';
import 'package:fluttercatalog/values/values.dart';

class BottomSheet3 extends StatefulWidget {
  @override
  _BottomSheet3State createState() => _BottomSheet3State();
}

class _BottomSheet3State extends State<BottomSheet3> {
 late List<SheetItemData> sheetItems;
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
        color: AppColors.white,
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

    AutoRouter.of(context).pop();
  }

  List<Widget> _buildSheetItems(List<SheetItemData> sheetItems) {
    List<Widget> items = [];
    for (var index = 0; index < sheetItems.length; index++) {
      double height = getHeight(index, sheetItems.length);
      items.add(
        SheetItem(
          height: height,
          hasTitle: sheetItems[index].hasTitle,
          title: sheetItems[index].title,
          hasContent: sheetItems[index].hasContent,
          content: sheetItems[index].content,
          hasAction: sheetItems[index].hasAction,
          action: sheetItems[index].action,
          borderRadius: sheetItems[index].borderRadius,
          onActionTap: sheetItems[index].onActionTap,
        ),
      );
    }

    return items;
  }

  double getHeight(int startIndex, int length) {
    double height = 0.0;
    for (var i = startIndex; i < length; i++) {
      height += sheetItems[i].height!;
    }
    return height;
  }
}
