class StatItem {
  final int id;
  final String imageUrl;
  final String name;
  final double price;
  final double chance;

  StatItem({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.chance,
  });

  factory StatItem.fromJson(Map<String, dynamic> json) {
    return StatItem(
      id: json['id'],
      imageUrl: json['imageUrl'],
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      chance: (json['chance'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'name': name,
      'price': price,
      'chance': chance,
    };
  }
}
