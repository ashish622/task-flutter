import 'package:bitmart_app/screens/assets_screen.dart';
import 'package:bitmart_app/screens/futures_screen.dart';
import 'package:bitmart_app/screens/home_screen.dart';
import 'package:bitmart_app/screens/market_screen.dart';
import 'package:bitmart_app/screens/trade_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _pageController = PageController(initialPage: 0);
  int selectedIndex = 0;
  List <Widget> widgets = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  void _onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          MarketScreen(),
          TradeScreen(),
          FuturesScreen(),
          AssetScreen(),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Colors.white10,
          onTap: _onPageChanged,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(
            color: Colors.white30
          ),
          selectedLabelStyle: const TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white10,
              icon: Icon(selectedIndex==0?Icons.home:Icons.home_outlined,
                color:selectedIndex==0?Colors.white:Colors.white30,),
              label: 'home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white10,
              icon: Icon(selectedIndex==1?Icons.bar_chart:Icons.bar_chart_outlined,
                color: selectedIndex==1?Colors.white:Colors.white30,),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white10,
              icon: Icon(selectedIndex==2?Icons.auto_graph:Icons.auto_graph_outlined,
                color: selectedIndex==2?Colors.white:Colors.white30,),
              label: 'Trade',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white10,
              icon: Icon(selectedIndex==3?Icons.flutter_dash:Icons.flutter_dash_outlined,
                color: selectedIndex==3?Colors.white:Colors.white30,),
              label: 'Futures',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white10,
              icon: Icon(selectedIndex==4?Icons.web_asset:Icons.web_asset_outlined,
                color: selectedIndex==4?Colors.white:Colors.white30,),
              label: 'Assets',
            ),
          ],
        ),
      )
    );
  }
}

