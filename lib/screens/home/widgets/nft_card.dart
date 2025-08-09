import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/data/models/model.dart';
import 'package:nft_market/shared/widgets/glassmorphism.dart';

class NftCard extends StatelessWidget {
  final NFT nft;
  const NftCard({super.key, required this.nft});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Glassmorphism(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  'assets/images/${nft.imageUrl}',
                  fit: BoxFit.cover,
                  height: 140,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
