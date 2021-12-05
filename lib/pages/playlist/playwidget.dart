import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/page_animation.dart';
import 'package:music_app_ui/pages/playing/playmusic.dart';

class Playwidget extends StatelessWidget {
  final imagename;

  final String? musicname;

  final String? singername;

  const Playwidget({Key? key, this.imagename, this.musicname, this.singername});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 9),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, pageanimation(MusicPlay()));
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 90,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage(imagename),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          musicname!,
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          singername!,
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
