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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: nft.length,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 16),
                child: NftCard(nft: nft[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
