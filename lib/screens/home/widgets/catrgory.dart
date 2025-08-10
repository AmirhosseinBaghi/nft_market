import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/data/models/model.dart';

class CatrgoryItem extends StatelessWidget {
  final List<NFT> nft;
  const CatrgoryItem({super.key, required this.nft});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: nft.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final currentNft = nft[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/${currentNft.imageUrl}',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    left: 90,
                    child: Text(
                      currentNft.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
