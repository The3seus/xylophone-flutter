import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
      return Expanded(
      child: FlatButton(
        color: color,
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.deepOrange, soundNumber: 1),
              buildKey(color: Colors.deepPurple, soundNumber: 2),
              buildKey(color: Colors.pink, soundNumber: 3),
              buildKey(color: Colors.lightBlue, soundNumber: 4),
              buildKey(color: Colors.lightGreen, soundNumber: 5),
              buildKey(color: Colors.redAccent, soundNumber: 6),
            ],
          )
        ),
      ),
    );
  }
}
