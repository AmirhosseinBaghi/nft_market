import 'package:nft_market/screens/home/data/models/home_page_data.dart';

class AppConstant {
  static const nftData = 'assets/data.json';
}

class HomePageDataConstants {
  static const List<String> _category = ["1", "2", "3"];
  static const List<String> _trendingCollection = ["4", "5", "6"];
  static const List<String> _topSeller = ["7", "8", "9"];

  static HomePageData get homePageData => HomePageData(
    category: _category,
    trending: _trendingCollection,
    topSeller: _topSeller,
  );
}
