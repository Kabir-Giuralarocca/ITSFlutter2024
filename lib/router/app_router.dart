import 'package:corso_flutter_2024/router/routes.dart';
import 'package:corso_flutter_2024/ui/screens/buttons_screen.dart';
import 'package:corso_flutter_2024/ui/screens/container_screen.dart';
import 'package:corso_flutter_2024/ui/screens/custom_scroll_view_screen.dart';
import 'package:corso_flutter_2024/ui/screens/form_screen.dart';
import 'package:corso_flutter_2024/ui/screens/home.dart';
import 'package:corso_flutter_2024/ui/screens/icon_screen.dart';
import 'package:corso_flutter_2024/ui/screens/image_screen.dart';
import 'package:corso_flutter_2024/ui/screens/layout_screen.dart';
import 'package:corso_flutter_2024/ui/screens/list_view_screen.dart';
import 'package:corso_flutter_2024/ui/screens/row_column_screen.dart';
import 'package:corso_flutter_2024/ui/screens/text_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: R.home.path,
    routes: [
      GoRoute(
        name: R.home.name,
        path: R.home.path,
        builder: (context, state) => Home(),
      ),
      GoRoute(
        name: R.container.name,
        path: R.container.path,
        builder: (context, state) => ContainerScreen(),
      ),
      GoRoute(
        name: R.text.name,
        path: R.text.path,
        builder: (context, state) => TextScreen(),
      ),
      GoRoute(
        name: R.icons.name,
        path: R.icons.path,
        builder: (context, state) => IconScreen(),
      ),
      GoRoute(
        name: R.buttons.name,
        path: R.buttons.path,
        builder: (context, state) => ButtonsScreen(),
      ),
      GoRoute(
        name: R.images.name,
        path: R.images.path,
        builder: (context, state) => ImageScreen(),
      ),
      GoRoute(
        name: R.rowColumn.name,
        path: R.rowColumn.path,
        builder: (context, state) => RowColumnScreen(),
      ),
      GoRoute(
        name: R.layout.name,
        path: R.layout.path,
        builder: (context, state) => LayoutScreen(),
      ),
      GoRoute(
        name: R.listView.name,
        path: R.listView.path,
        builder: (context, state) => ListViewScreen(),
      ),
      GoRoute(
        name: R.customScrollView.name,
        path: R.customScrollView.path,
        builder: (context, state) => CustomScrollViewScreen(),
      ),
      GoRoute(
        name: R.form.name,
        path: R.form.path,
        builder: (context, state) => FormScreen(),
      ),
    ],
  );
}
