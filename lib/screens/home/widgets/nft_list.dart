import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/data/models/model.dart';
import 'package:nft_market/screens/home/widgets/nft_card.dart';

class NftList extends StatelessWidget {
  final String title;
  final List<NFT> nft;
  const NftList({super.key, required this.title, required this.nft});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(title),
        ),
        SizedBox(
          height: 350,
          child: ListView.builder(
            itemCount: nft.length,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 16),
                child: NftCard(nft: nft[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
