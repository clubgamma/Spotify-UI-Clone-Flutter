import 'package:flutter/material.dart';


class SpotifyClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify-ClubGamma',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(18, 18, 18, 1),
        primaryColor: Color.fromRGBO(30, 215, 96, 1),
        accentColor: Colors.grey,
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: Color.fromRGBO(40, 40, 40, 1),
        //   elevation: 4,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Color.fromRGBO(119, 119, 119, 1),
        // ),
      ),
 //     home: TabBarScreen(),
    );
  }
}
