import 'package:flutter/material.dart';
import 'package:nft_market/core/theme.dart';
import 'package:nft_market/routes/app_route.dart';
import 'package:nft_market/screens/home/data/repository/nft_repository.dart';
import 'package:nft_market/screens/home/provider/home_provider.dart';
import 'package:nft_market/screens/statesScreen/data/repository/stats_repository.dart';
import 'package:nft_market/screens/statesScreen/provider/stats_provider.dart';
import 'package:nft_market/screens/statesScreen/services/stats_json_service.dart';
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
        ChangeNotifierProvider(
          create:
              (_) => StatsProvider(
                StatsRepository(statsDataService: StatsDataService()),
              ),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: AppRoute.routes,
      initialRoute: AppRoute.welcome,
    );
  }
}
