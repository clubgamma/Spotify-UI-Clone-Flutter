import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/homepage.dart';
import 'screens/settings_screen.dart';
import 'utils/const.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ),
  );
  runApp(SpotifyUIClone());
}

class SpotifyUIClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI Clone',
      theme: Constants.theme,
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomePage(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
      },
    );
  }
}
