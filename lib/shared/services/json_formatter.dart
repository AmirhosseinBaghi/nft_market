import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nft_market/core/constant.dart';
import 'package:nft_market/screens/home/data/models/model.dart';

class JsonDataService {
  Future<List<NFT>> loadHotel() async {
    final String response = await rootBundle.loadString(AppConstant.nftData);
    final Map<String, dynamic> jsonData = json.decode(response);
    final List<dynamic> hotelsList = jsonData["hotels"];
    return hotelsList
        .map((hotel) => NFT.fromJson(hotel as Map<String, dynamic>))
        .toList();
  }
}
