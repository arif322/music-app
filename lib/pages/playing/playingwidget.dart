import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/home.dart';

import 'package:music_app_ui/pages/playing/profile/details.dart';
import 'package:music_app_ui/pages/playlist/playlist.dart';

class Homescreen extends StatefulWidget {
  static const String path = "Homescreen";
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int indexNumber = 0;
  List tabedpage = [
    // pageanimation(Homepage()),
    // pageanimation(Albumpage()),
    // pageanimation(Musicpage()),
    // pageanimation(Profilepage()),
    Homepage(),
    PlayListPage(),
    // MusicPlay(),
    DetailsPage(),
  ];

  void _pagetabing(int index) {
    setState(() {
      indexNumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'Album',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: 'Music',
          ),
        ],
        currentIndex: indexNumber,
        onTap: _pagetabing,
      ),
      body: (tabedpage[indexNumber]),
    );
  }
}
