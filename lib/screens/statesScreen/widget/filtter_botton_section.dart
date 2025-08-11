import 'package:flutter/material.dart';
import 'package:nft_market/screens/statesScreen/widget/filtter_button.dart';

class FiltterBottonSection extends StatelessWidget {
  const FiltterBottonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FiltterButton(
                icon: Icons.category_rounded,
                title: "All categories",
              ),
              FiltterButton(icon: Icons.link, title: "All Chains"),
            ],
          );
        },
      ),
    );
  }
}
