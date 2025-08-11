import 'package:flutter/material.dart';
import 'package:nft_market/shared/widgets/glassmorphism.dart';

class FiltterButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const FiltterButton({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Glassmorphism(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          width: 150,
          height: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 2),
              Icon(icon, color: Colors.white),
              SizedBox(width: 2),
              Text(title, style: TextStyle(color: Colors.white)),
              SizedBox(width: 2),
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
              SizedBox(width: 2),
            ],
          ),
        ),
      ),
    );
  }
}
