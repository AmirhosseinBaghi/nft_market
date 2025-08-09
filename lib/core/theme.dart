import 'package:flutter/material.dart';

class Appcolors {
  static const Color primary = Color(0xFF211134);

  //light theme color
  static const Color lightText = Colors.white;
}

class AppTheme {
  static ThemeData get lightTheme {
    final baseLight = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Appcolors.primary,
      scaffoldBackgroundColor: Appcolors.primary,
      fontFamily: 'SFDisplay',
      textTheme: TextTheme(
        //Welcome Screen Theme
        displayLarge: TextStyle(
          fontSize: 36,
          color: Appcolors.lightText,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Appcolors.lightText,
        ),
        bodySmall: TextStyle(fontSize: 16, color: Colors.white60),

        //home screen
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Appcolors.lightText,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Appcolors.lightText,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Appcolors.lightText,
        ),
      ),
    );

    return baseLight;
  }
}
