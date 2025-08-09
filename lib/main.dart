import 'package:flutter/material.dart';
import 'package:nft_market/core/theme.dart';
import 'package:nft_market/screens/home/data/repository/nft_repository.dart';
import 'package:nft_market/screens/home/provider/home_provider.dart';
import 'package:nft_market/screens/welcomeScreen/presentation/welcome_screen.dart';
import 'package:nft_market/shared/services/json_formatter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:
              (_) => HomeProvider(
                NftRepository(jsonDataService: JsonDataService()),
              ),
        ),
      ],
    ),
  );
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
