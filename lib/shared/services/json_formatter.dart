import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nft_market/core/constant.dart';
import 'package:nft_market/screens/home/data/models/model.dart';

class JsonDataService {
  Future<List<NFT>> loadNFT() async {
    final String response = await rootBundle.loadString(AppConstant.nftData);
    final Map<String, dynamic> jsonData = json.decode(response);
    final List<dynamic> nftList = jsonData["NFT"];
    return nftList
        .map((nft) => NFT.fromJson(nft as Map<String, dynamic>))
        .toList();
  }
}
