import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeLight = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.black54,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.deepPurple),
        side: WidgetStatePropertyAll(BorderSide(color: Colors.deepPurple)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light).copyWith(
      primary: Colors.deepPurpleAccent,
    ),
  );

  static ThemeData themeDark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.black,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.white54,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.teal),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.teal),
        side: WidgetStatePropertyAll(BorderSide(color: Colors.teal)),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.tealAccent,
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(
      primary: Colors.tealAccent,
    ),
  );
}
