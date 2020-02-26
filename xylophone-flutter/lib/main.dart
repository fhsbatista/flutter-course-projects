import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Note(1, Colors.red),
                Note(2, Colors.orange),
                Note(3, Colors.yellow),
                Note(4, Colors.green),
                Note(5, Colors.blue),
                Note(6, Colors.indigo),
                Note(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Note extends StatelessWidget {
  int soundNumber;
  Color color;

  Note(this.soundNumber, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }
}
