import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/data/models/model.dart';
import 'package:nft_market/screens/home/data/repository/nft_repository.dart';

class HomeProvider extends ChangeNotifier {
  final NftRepository _nftRepository;

  HomeProvider(this._nftRepository) {
    fetchNft();
  }

  List<NFT> _nft = [];
  List<NFT> get nft => _nft;

  fetchNft() async {
    _nft = await _nftRepository.fetchNft();
    notifyListeners();
  }
}
