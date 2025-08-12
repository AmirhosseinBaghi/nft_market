import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:nft_market/screens/statesScreen/data/model/stats_model.dart';

class StatsDataService {
  Future<List<StatItem>> loadStats() async {
    final String response = await rootBundle.loadString(
      'assets/stats_data.json',
    );
    final Map<String, dynamic> jsonData = json.decode(response);
    final List<dynamic> statsList = jsonData['Stats'];
    return statsList
        .map((stats) => StatItem.fromJson(stats as Map<String, dynamic>))
        .toList();
  }
}
