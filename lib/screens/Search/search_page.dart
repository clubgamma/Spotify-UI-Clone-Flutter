import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    print('In Search');
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Search'),
        ),
      ),
    );
  }
}
