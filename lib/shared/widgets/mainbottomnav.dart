import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_market/screens/home/home_screen.dart';
import 'package:nft_market/screens/profile_test.dart';
import 'package:nft_market/screens/statesScreen/states_screen.dart';
import 'package:nft_market/screens/stats_test.dart';

class MainBottomNav extends StatefulWidget {
  const MainBottomNav({super.key});

  @override
  State<MainBottomNav> createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    StatesScreen(),
    ProfileTest(),
    StatsTest(),
  ];

  List<NavigationDestination> _items() {
    return [
      NavigationDestination(
        icon: Image.asset('assets/images/home.png'),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset('assets/images/Symbol.png'),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset('assets/images/Explore.png'),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset('assets/images/More.png'),
        label: '',
      ),
    ];
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ClipPath(
          clipper: Hexa(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              border: Border.all(
                color: Colors.white.withOpacity(0.4),
                width: 1,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
        body: _widgetOption[_selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: NavigationBar(
                backgroundColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                selectedIndex: _selectedIndex,
                destinations: _items(),
                onDestinationSelected: _onItemTap,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Hexa extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;
    path.moveTo(w * 0.5, 0);
    path.lineTo(w, h * 0.25);
    path.lineTo(w, h * 0.75);
    path.lineTo(w * 0.5, h);
    path.lineTo(0, h * 0.75);
    path.lineTo(0, h * 0.25);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
