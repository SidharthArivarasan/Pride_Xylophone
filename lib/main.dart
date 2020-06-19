import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int soundNumber;
  Color tileColor;

  void playSound(soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({tileColor, soundNumber})
  {
    return Expanded(
      child: FlatButton(
        color: tileColor,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(tileColor: Colors.red,soundNumber: 1),
                buildKey(tileColor: Colors.orange, soundNumber: 2),
                buildKey(tileColor: Colors.yellow, soundNumber: 3),
                buildKey(tileColor: Colors.green, soundNumber: 4),
                buildKey(tileColor: Colors.teal, soundNumber: 5),
                buildKey(tileColor: Colors.blue, soundNumber: 6),
                buildKey(tileColor: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
