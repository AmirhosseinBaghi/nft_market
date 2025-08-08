import 'package:flutter/material.dart';
import 'package:nft_market/shared/widgets/glassmorphism.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: Image.asset('assets/images/welcome.png', fit: BoxFit.cover),
          ),
          Positioned(
            top: height * 0.07,
            left: width * 0.05,
            child: Text(
              'Welcome to\nNFT Marketplace',
              style: theme.displayLarge,
            ),
          ),
          Positioned(
            bottom: height * 0.07,
            left: width * 0.05,
            right: width * 0.05,
            child: Glassmorphism(
              backgroundColor: Colors.white.withOpacity(0.01),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12,
                ),
                child: Column(
                  children: [
                    Text(
                      'Explore and Mint NFTs',
                      style: theme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'You can buy and sell the NFTs of the best artists in the world.',
                      style: theme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                        gradient: LinearGradient(
                          colors: [Color(0xFF8a2Be2), Color(0xFF4B0082)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Get Started now',
                          style: theme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
