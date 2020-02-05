import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am investor'),
          backgroundColor: Colors.amber[900],
        ),
        body: Center(
            child: Image(
          image: AssetImage('images/guy_with_money.png'),
        )),
      ),
    ));
