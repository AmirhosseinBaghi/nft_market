import 'package:flutter/material.dart';
import 'package:nft_market/core/theme.dart';
import 'package:nft_market/screens/statesScreen/widget/filtter_botton_section.dart';

class StatesScreen extends StatefulWidget {
  const StatesScreen({super.key});

  @override
  State<StatesScreen> createState() => _StatesScreenState();
}

class _StatesScreenState extends State<StatesScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double indicatorWidth = 106.3;
    double indicatorHeight = 3.6;
    double tabWidth = MediaQuery.of(context).size.width / 2;
    double indicatorLeft =
        tabController.index * tabWidth + (tabWidth - indicatorWidth) / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.primary,
        title: Text("Stats", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [Image.asset('assets/images/title.png'), SizedBox(width: 4)],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white38,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.bar_chart_rounded, size: 20),
                    text: 'Ranking',
                  ),
                  Tab(
                    icon: Icon(Icons.show_chart_rounded, size: 20),
                    text: 'Activity',
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: indicatorLeft,
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),

                  child: Container(
                    key: ValueKey(tabController.index),
                    width: indicatorWidth,
                    height: indicatorHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [Color(0xFFB983FF), Color(0xFF9B5CFF)],

                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF9B5CFF).withOpacity(0.7),
                          blurRadius: 18,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          FiltterBottonSection(),
        ],
      ),
    );
  }
}
