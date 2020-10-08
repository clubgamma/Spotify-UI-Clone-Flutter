import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/src/app.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ),
  );
  runApp(SpotifyClone());
}
