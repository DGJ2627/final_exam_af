import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: const Color(0xff37474f),
      secondary: Colors.grey.shade200,
    ),

  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Colors.deepPurpleAccent,
      secondary: Colors.white54,
    ),
  );
}