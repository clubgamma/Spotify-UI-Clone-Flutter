import 'package:flutter/material.dart';

class UserMusicPage extends StatefulWidget {
  @override
  _UserMusicPageState createState() => _UserMusicPageState();
}

class _UserMusicPageState extends State<UserMusicPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 20,itemBuilder: ,
            )
          ],
        ),
      ),
    );
  }
}
