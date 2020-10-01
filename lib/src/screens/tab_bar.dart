import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/src/screens/home_screen.dart';
import 'package:spotify_ui_clone/src/screens/library_screen.dart';
import 'package:spotify_ui_clone/src/screens/search_screen.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _currentIndex;

  List<Widget> _pageList = [
    HomeScreen(),
    SearchScreen(),
    LibScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  _onPageSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: _pageList[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        onTap: _onPageSelected,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
