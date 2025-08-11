class StatsData {
  final String name;
  final String price;
  final double chance;
  final String imageUrl;

  StatsData({
    required this.name,
    required this.price,
    required this.chance,
    required this.imageUrl,
  });
}

class Appdatabase {
  static List<StatsData> get statesdata {
    return [
      StatsData(
        name: 'Azumi',
        price: '200055.02',
        chance: 3.99,
        imageUrl: 'nft_1.jpg',
      ),
      StatsData(
        name: 'Hape prime',
        price: '180055.45',
        chance: 33.79,
        imageUrl: 'nft_2.jpg',
      ),
      StatsData(
        name: 'Crypto',
        price: '90055.62',
        chance: -6.87,
        imageUrl: 'nft_3.jpg',
      ),
    ];
  }
}
