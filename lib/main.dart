import 'package:corso_flutter_2024/router/app_router.dart';
import 'package:corso_flutter_2024/ui/bloc/theme.cubit.dart';
import 'package:corso_flutter_2024/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

void main() {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(builder: (context, themeMode) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppTheme.themeLight,
          darkTheme: AppTheme.themeDark,
          themeMode: themeMode,
          routerConfig: AppRouter.router,
        );
      }),
    );
  }
}
