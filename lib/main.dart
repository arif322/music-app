import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/home.dart';
import 'package:music_app_ui/pages/playing/playingwidget.dart';
import 'package:music_app_ui/pages/playing/profile/details.dart';
import 'package:music_app_ui/pages/playlist/playlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.path,
      routes: {
        Homescreen.path: (context) => Homescreen(),
        Homepage.path: (context) => Homepage(),
        PlayListPage.path: (context) => PlayListPage(),
        DetailsPage.path: (context) => DetailsPage(),
      },
    );
  }
}
