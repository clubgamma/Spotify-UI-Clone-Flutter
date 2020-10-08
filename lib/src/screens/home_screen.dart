import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:spotify_ui_clone/src/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        actions: [
          IconButton(
            splashColor: Colors.black,
            highlightColor: Colors.black,
            color: Colors.white,
            icon: Icon(MaterialCommunityIcons.settings_outline),
            onPressed: () {
              Navigator.of(context).pushNamed(SettingsScreen.routeName);
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
