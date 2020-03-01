import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
        ),
        color: Theme.of(context).accentColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
