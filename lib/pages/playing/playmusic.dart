import 'package:flutter/material.dart';

class MusicPlay extends StatefulWidget {
  static const String path = "MusicPlay";
  const MusicPlay({Key? key}) : super(key: key);

  @override
  _MusicPlayState createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  double? slidervalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Center(
                        child: Text(
                          "Playing",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Container(
                        child: PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Text("Play"),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text("Pause"),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 1) {
                              print("play");
                            } else {
                              print("Pause now");
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 380,
                  width: MediaQuery.of(context).size.width * 1.8 / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.cyan, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Image(
                      // height: 300,
                      image: AssetImage(
                        'images/linkinpark.jpg',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Numb",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Linkin Park',
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 350,
                        child: Slider(
                          activeColor: Colors.teal,
                          value: slidervalue ?? 0,
                          min: 0,
                          max: 200,
                          onChanged: (value) {
                            setState(() {
                              slidervalue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text('3.07'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fast_rewind_rounded,
                        size: 25,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.teal,
                              Colors.blueAccent,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.pause),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.fast_forward_rounded,
                        size: 25,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
