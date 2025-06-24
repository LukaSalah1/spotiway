import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatefulWidget {
  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  void playMusic(int x) {
    // Not subscribed — show alert
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/music$x.mp3"),
      autoStart: true,
    );
  }

  Widget myButton(int i, String txt) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          onPressed: () {
            playMusic(i);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: Colors.green[700],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  txt,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text(
            'Spotiway',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, 'Music 1'),
            myButton(2, 'Music 2'),
            myButton(3, 'Music 3'),
            myButton(4, 'Music 4'),
            myButton(5, 'Music 5'),
            myButton(6, 'Music 6'),
            myButton(7, 'Music 7'),
            myButton(8, 'Music 8'),
          ],
        ),
      ),
    );
  }
}
