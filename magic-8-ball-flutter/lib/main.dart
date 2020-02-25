import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Magic 8"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Center(child: BallPage()),
            )),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void setOnPressed() {
    setState(() {
      changeBallNumber();
      showSnackBar();
    });
  }

  void changeBallNumber() {
    int newBallNumber = getNewBallNumber();
    if (ballNumber != newBallNumber) {
      ballNumber = newBallNumber;
    } else {
      changeBallNumber();
    }
  }

  void showSnackBar() {
    Scaffold.of(context).hideCurrentSnackBar();
    final snackBar = SnackBar(
      content: Text("Ball $ballNumber has been clicked"),
      action: SnackBarAction(
        label: 'OK',
        onPressed: hideVisibleSnackBar,
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  int getNewBallNumber() {
    return Random().nextInt(4) + 1;
  }

  void hideVisibleSnackBar() {
    Scaffold.of(context).hideCurrentSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: setOnPressed,
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
