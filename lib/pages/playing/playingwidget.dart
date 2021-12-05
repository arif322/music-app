// import 'package:flutter/material.dart';
// import 'package:music_app_ui/pages/home.dart';
// import 'package:music_app_ui/pages/playing/playmusic.dart';
// import 'package:music_app_ui/pages/playlist/playlist.dart';

// class PlayingPage extends StatefulWidget {
//   static const String path = "PlayingPage";
//   const PlayingPage({Key? key}) : super(key: key);

//   @override
//   _PlayingPageState createState() => _PlayingPageState();
// }

// class _PlayingPageState extends State<PlayingPage> {
//   @override
//   Widget build(BuildContext context) {
//     int _indexNumber = 0;
//     List pages = [Homepage(), PlayListPage(), MusicPlay()];

//     void _page(int index) {
//       setState(() {
//         _indexNumber = index;
//       });
//     }

//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         showSelectedLabels: true,
//         selectedItemColor: Colors.teal,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.album), label: 'Album'),
//           BottomNavigationBarItem(icon: Icon(Icons.audiotrack), label: 'Music'),
//           // BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
//         ],
//         currentIndex: _indexNumber,
//         onTap: _page,
//       ),
//       body: (pages[_indexNumber]),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/home.dart';
import 'package:music_app_ui/pages/playing/playmusic.dart';
import 'package:music_app_ui/pages/playlist/playlist.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:login_apps/Buttomnavigationpage/Profile.dart';
// import 'package:login_apps/Buttomnavigationpage/album.dart';
// import 'package:login_apps/Buttomnavigationpage/home.dart';
// import 'package:login_apps/Buttomnavigationpage/music.dart';
// import 'package:login_apps/pagerouteAnimation.dart';

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
    MusicPlay(),
  ];

  void _pagetabing(int index) {
    setState(() {
      indexNumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
