import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/screens/Home/home_page.dart';
import 'package:spotify_ui_clone/screens/Search/search_page.dart';
import 'package:spotify_ui_clone/screens/UserLibrary/user_library_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_index) {
      case 0:
        print("home");
        page = Home();
        break;
      case 1:
        print("Search");
        page = Search();
        break;

      case 2:
        print("User Library");
        page = UserLibrary();
        break;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: page,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white10,
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white70,
          ),
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('User Library'),
            ),
          ],
          currentIndex: _index,
          onTap: (int newIndex) => setState(() {
            _index = newIndex;
          }),
        ),
      ),
    );
  }
}
