import 'package:flutter/material.dart';

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
                  if (diceNumber1 < 6) {
                    diceNumber1 = diceNumber1 + 1;
                    print("New value for dice 1 is $diceNumber1");
                  } else {
                    diceNumber1 = 1;
                  }
                });
                print("Left button got pressed");
              },
              child: Image.asset('images/dice$diceNumber1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (diceNumber2 < 6) {
                    diceNumber2++;
                    print("New value for dice 2 is $diceNumber2");
                  } else {
                    diceNumber2 = 1;
                  }
                });
                print("Right button got pressed");
              },
              child: Image.asset('images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
