import 'package:flutter/material.dart';

class Appcolors {
  static const Color primary = Color.fromARGB(255, 76, 20, 87);

  //light theme color
  static const Color lightText = Colors.white;
}

class AppTheme {
  static ThemeData get lightTheme {
    final baseLight = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Appcolors.primary,
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
      ),
    );

    return baseLight;
  }
}
