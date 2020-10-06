import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print('in Home ');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
        actions: [Icon(Icons.settings)],
      ),
      body: Center(
        child: Container(
          child: Text('Home'),
        ),
      ),
    );
  }
}
