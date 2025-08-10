import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/provider/home_provider.dart';
import 'package:nft_market/screens/home/widgets/catrgory.dart';
import 'package:nft_market/screens/home/widgets/nft_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 16),
            Text('NFT Marketplace', style: textTheme.titleLarge),
            SizedBox(height: 16),
            Consumer<HomeProvider>(
              builder: (context, homeProvider, child) {
                return CatrgoryItem(nft: homeProvider.getCategory());
              },
            ),
            Consumer<HomeProvider>(
              builder: (context, homeProvider, child) {
                return NftList(
                  title: "Trending collections",
                  nft: homeProvider.getTrending(),
                );
              },
            ),
            SizedBox(height: 16),
            Consumer<HomeProvider>(
              builder: (context, homeProvider, child) {
                return NftList(
                  title: 'Top seller',
                  nft: homeProvider.getTopSeller(),
                );
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
