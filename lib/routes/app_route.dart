import 'package:flutter/material.dart';
import 'package:nft_market/screens/welcomeScreen/presentation/welcome_screen.dart';
import 'package:nft_market/shared/widgets/mainbottomnav.dart';

class AppRoute {
  static const String home = '/';
  static const String welcome = '/welcome';
  static const String stats = '/stats';

  static final Map<String, WidgetBuilder> routes = {
    welcome: (ctx) => const WelcomeScreen(),
    home: (ctx) => const MainBottomNav(),
  };
}
