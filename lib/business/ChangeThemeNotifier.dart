import 'package:flutter/material.dart';

import '../views/theme_data_styles/theme_data_chooser.dart';

enum ThemeChoice { main, orange }

class ChangeThemeNotifier extends ChangeNotifier {
  ThemeChoice _themeChoice = ThemeChoice.main;
  ThemeData _currentTheme = ThemeDataStyles.mainThemeData();

  ThemeData _mainTheme = ThemeDataStyles.mainThemeData();

  ThemeData _orangeTheme = ThemeDataStyles.orangeThemeData();

  ThemeData get currentTheme => _currentTheme;

  ThemeChoice get choice => _themeChoice;

  void toggleThemes() {
    if (_themeChoice == ThemeChoice.orange) {
      _themeChoice = ThemeChoice.main;
      _currentTheme = _mainTheme;
    } else {
      _themeChoice = ThemeChoice.orange;
      _currentTheme = _orangeTheme;
    }
    notifyListeners();
  }
}
