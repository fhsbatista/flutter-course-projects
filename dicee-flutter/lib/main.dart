import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  DicePage_State createState() => DicePage_State();
}

class DicePage_State extends State<DicePage> {
  int diceNumber2 = 1;
  int diceNumber1 = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNumber1 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$diceNumber1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceNumber2 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
