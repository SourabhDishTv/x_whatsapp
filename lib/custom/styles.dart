import 'package:flutter/material.dart';

class Styles {
  static const _defaultTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );

  static ThemeData getTheme(BuildContext context, bool isDarkTheme) {
    return isDarkTheme ? setDarkTheme(context) : setLightTheme(context);
  }

  static TextTheme setTextTheme(BuildContext context) {
    return TextTheme(
      displayLarge: _defaultTextStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
      bodyLarge: _defaultTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
      bodyMedium: _defaultTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
      bodySmall: _defaultTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
      titleMedium: _defaultTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
      titleSmall: _defaultTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).indicatorColor,
      ),
    );
  }

  static ThemeData setLightTheme(BuildContext context) {
    return ThemeData(
        primaryColor: const Color.fromARGB(255, 158, 51, 51),
        backgroundColor: const Color.fromARGB(255, 158, 51, 51),
        scaffoldBackgroundColor: const Color.fromARGB(255, 158, 51, 51),
        indicatorColor: Colors.black,
        hintColor: Colors.grey,
        errorColor: Colors.redAccent,
        highlightColor: Colors.amber.shade200,
        focusColor: Colors.black87,
        brightness: Brightness.light,
        textTheme: TextTheme(
            bodyMedium: TextStyle(
          color: Colors.grey.shade900,
        )),
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: const ColorScheme.light(),
            ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 158, 51, 51),
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
              size: 24,
            )));
  }

  static ThemeData setDarkTheme(BuildContext context) {
    return ThemeData(
        primaryColor: const Color.fromARGB(255, 158, 51, 51),
        backgroundColor: const Color.fromARGB(255, 158, 51, 51),
        scaffoldBackgroundColor: const Color.fromARGB(255, 158, 51, 51),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.grey.shade50,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.grey.shade100,
        ),
        indicatorColor: Colors.black,
        hintColor: Colors.grey,
        errorColor: Colors.redAccent,
        highlightColor: Colors.amber.shade200,
        focusColor: Colors.black87,
        brightness: Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: const ColorScheme.light(),
            ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 158, 51, 51),
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
              size: 24,
            )));
  }
}
