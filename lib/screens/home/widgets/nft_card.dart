import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/data/models/model.dart';
import 'package:nft_market/shared/widgets/glassmorphism.dart';

class NftCard extends StatelessWidget {
  final NFT nft;
  const NftCard({super.key, required this.nft});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Glassmorphism(
        child: Column(children: [Image.asset('assets/images/${nft.imageUrl}')]),
      ),
    );
  }
}
