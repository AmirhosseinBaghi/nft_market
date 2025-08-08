import 'package:flutter/material.dart';
import 'package:nft_market/core/theme.dart';
import 'package:nft_market/screens/welcomeScreen/presentation/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
