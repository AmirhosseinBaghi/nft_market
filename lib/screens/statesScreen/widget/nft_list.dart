import 'package:flutter/material.dart';
import 'package:nft_market/screens/statesScreen/data/model/stats_model.dart';
import 'package:nft_market/shared/widgets/glassmorphism.dart';

class NftList extends StatelessWidget {
  final List<StatItem> nftList;
  const NftList({super.key, required this.nftList});

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      child: SizedBox(
        height: 240,
        child: ListView.separated(
          separatorBuilder:
              (context, index) => Divider(indent: 16, endIndent: 16),
          itemCount: nftList.length,
          itemBuilder: (context, index) {
            final item = nftList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8,
              ),
              child: Row(
                children: [
                  Text('${index + 1}', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/${item.imageUrl}',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 6),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'View info',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$ ${item.price.toString()}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${item.chance > 0 ? '+' : ''}${item.chance.toStringAsFixed(2)}%',
                        style: TextStyle(
                          fontSize: 12,

                          color:
                              item.chance >= 0
                                  ? Colors.greenAccent
                                  : Colors.redAccent,
                        ),
                      ),
                    ],
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
