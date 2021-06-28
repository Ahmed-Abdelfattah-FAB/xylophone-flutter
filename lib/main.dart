import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundnum) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundnum.wav');
  }

  Expanded BuildKey({Color color, int soundnum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(soundnum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundnum: 1),
              BuildKey(color: Colors.yellow, soundnum: 2),
              BuildKey(color: Colors.green, soundnum: 3),
              BuildKey(color: Colors.orange, soundnum: 4),
              BuildKey(color: Colors.blue, soundnum: 5),
              BuildKey(color: Colors.teal, soundnum: 6),
              BuildKey(color: Colors.lime, soundnum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
