class NFT {
  final String id;
  final String name;
  final String imageUrl;

  NFT({required this.id, required this.name, required this.imageUrl});

  factory NFT.fromJson(Map<String, dynamic> json) =>
      NFT(id: json["id"], name: json["name"], imageUrl: json["imageUrl"]);

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "imageUrl": imageUrl,
  };
}
