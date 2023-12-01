import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_whatsapp/custom/styles.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = false;
  ThemeData? _themeData = ThemeData();

  changeTheme(BuildContext context) {
    _isDarkTheme = !_isDarkTheme;
    _themeData = Styles.getTheme(context, _isDarkTheme);
    notifyListeners();
  }

  bool get isDarkTheme => _isDarkTheme;

  ThemeData getDefaultTheme(BuildContext context) =>
      Styles.getTheme(context, _isDarkTheme);
}

final themeProvider = ChangeNotifierProvider((ref) => ThemeProvider());
