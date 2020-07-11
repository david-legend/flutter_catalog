import 'package:auto_route/auto_route_annotations.dart';
import 'package:fluttercatalog/presentation/root_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: RootScreen, initial: true),
  ],
)
class $Router {}
