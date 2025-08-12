import 'package:flutter/material.dart';
import 'package:nft_market/screens/statesScreen/data/model/stats_model.dart';
import 'package:nft_market/screens/statesScreen/data/repository/stats_repository.dart';

class StatsProvider with ChangeNotifier {
  final StatsRepository _statsRepository;
  StatsProvider(this._statsRepository) {
    fetchStats();
  }
  List<StatItem> _stats = [];
  bool _isLoading = false;

  List<StatItem> get stats => _stats;
  bool get isLoading => _isLoading;

  Future<void> fetchStats() async {
    _isLoading = true;
    notifyListeners();
    _stats = await _statsRepository.fetchStats();
    _isLoading = false;
    notifyListeners();
  }
}
