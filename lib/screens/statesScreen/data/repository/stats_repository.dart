import 'package:nft_market/screens/statesScreen/data/model/stats_model.dart';
import 'package:nft_market/screens/statesScreen/services/stats_json_service.dart';

class StatsRepository {
  final StatsDataService statsDataService;

  StatsRepository({required this.statsDataService});

  Future<List<StatItem>> fetchStats() async {
    return statsDataService.loadStats();
  }
}
