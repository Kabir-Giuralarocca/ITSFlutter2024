import 'package:corso_flutter_2024/router/routes.dart';
import 'package:corso_flutter_2024/ui/screens/home.dart';
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
    ],
  );
}
