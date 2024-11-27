import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();
  static const String themeKey = 'theme_mode_key';

  ThemeCubit() : super(ThemeMode.system) {
    _loadTheme();
  }

  void setTheme(ThemeMode themeMode) async {
    emit(themeMode);
    await asyncPrefs.setInt(themeKey, themeMode.index);
  }

  Future<void> _loadTheme() async {
    int? themeModeIndex = await asyncPrefs.getInt(themeKey);
    if (themeModeIndex != null) {
      emit(ThemeMode.values[themeModeIndex]);
    }
  }
}
