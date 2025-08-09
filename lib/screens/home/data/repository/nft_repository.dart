import 'package:nft_market/screens/home/data/models/model.dart';
import 'package:nft_market/shared/services/json_formatter.dart';

class NftRepository {
  final JsonDataService jsonDataService;

  NftRepository({required this.jsonDataService});

  Future<List<NFT>> fetchNft() async {
    return jsonDataService.loadNFT();
  }
}
