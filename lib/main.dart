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
        initialRoute: Routes.timeLine,
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//
//class ExpansionTileSample extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text('ExpansionTile'),
//        ),
//        body:
////        EntryItem(data[0]),
//            ListView.builder(
//          itemBuilder: (BuildContext context, int index) =>
//              EntryItem(data[index]),
//          itemCount: data.length,
//        ),
//      ),
//    );
//  }
//}
//
//// One entry in the multilevel list displayed by this app.
//class Entry {
//  Entry(this.title, [this.children = const <Entry>[]]);
//
//  final String title;
//  final List<Entry> children;
//}
//
//// The entire multilevel list displayed by this app.
//final List<Entry> data = <Entry>[
//  Entry(
//    'Chapter A',
//    <Entry>[
//      Entry(
//        'Section A0',
//        <Entry>[
//          Entry('Item A0.1'),
//          Entry('Item A0.2'),
//          Entry('Item A0.3'),
//        ],
//      ),
//      Entry('Section A1'),
//      Entry('Section A2'),
//    ],
//  ),
//  Entry(
//    'Chapter B',
//    <Entry>[
//      Entry('Section B0'),
//      Entry('Section B1'),
//    ],
//  ),
//  Entry(
//    'Chapter C',
//    <Entry>[
//      Entry('Section C0'),
//      Entry('Section C1'),
//      Entry(
//        'Section C2',
//        <Entry>[
//          Entry('Item C2.0'),
//          Entry('Item C2.1'),
//          Entry('Item C2.2'),
//          Entry('Item C2.3'),
//        ],
//      ),
//    ],
//  ),
//];
//
//// Displays one Entry. If the entry has children then it's displayed
//// with an ExpansionTile.
//class EntryItem extends StatelessWidget {
//  const EntryItem(this.entry);
//
//  final Entry entry;
//
//  Widget _buildTiles(Entry root) {
//    if (root.children.isEmpty) return ListTile(title: Text(root.title));
//    return ExpansionTile(
//      key: PageStorageKey<Entry>(root),
//      title: Text(root.title),
//      children: root.children.map(_buildTiles).toList(),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return _buildTiles(entry);
//  }
//}
//
//void main() {
//  runApp(ExpansionTileSample());
//}
