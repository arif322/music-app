import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/playlist/playwidget.dart';

class PlayListPage extends StatefulWidget {
  static const String path = "PlayList";
  const PlayListPage({Key? key}) : super(key: key);

  @override
  _PlayListPageState createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Your Playlist",
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back_ios),
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.all(18),
            child: Icon(
              Icons.search,
              color: Colors.black45,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Playwidget(
              imagename: "images/AgarTumMilJao.jpg",
              musicname: "Agar Tum Mil Jao",
              singername: "Zaher",
            ),
            Playwidget(
              imagename: "images/Bekhayali.jpg",
              musicname: "Bekhayali",
              singername: "Kabir Singh",
            ),
            Playwidget(
              imagename: "images/lier.jpg",
              musicname: "Lier",
              singername: "Sandra N.",
            ),
            Playwidget(
              imagename: "images/phirbhi.jpg",
              musicname: "Phir Bhi",
              singername: "Half Girlfriend",
            ),
            Playwidget(
              imagename: "images/rabta.jpg",
              musicname: "RAABTA",
              singername: "RAABTA",
            ),
            Playwidget(
              imagename: "images/shakira1.jpg",
              musicname: "WAKA WAKA",
              singername: "SAKIRA",
            ),
          ],
        )),
      ),
    );
  }
}
