import 'package:bmi_calculator/model/bmi_data.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final BMIData data;

  ResultsPage({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                'Your Result',
                style: kHeaderTextStyle,
              ),
              alignment: Alignment.bottomLeft,
              margin: kDefaultPageContentMargin.copyWith(
                top: 0,
                bottom: 0,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: kDefaultPageContentMargin,
              child: ReusableCard(
                child: _Result(
                  data: data,
                ),
              ),
            ),
          ),
          BottomButton(
            text: 'Re-Calculate',
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}

class _Result extends StatelessWidget {
  final BMIData data;

  _Result({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: kDefaultPageContentMargin,
          child: Text(
            data.description.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24.0,
              color: Colors.greenAccent,
            ),
          ),
        ),
        Container(
          margin: kDefaultPageContentMargin,
          child: Text(
            data.bmi.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          margin: kDefaultPageContentMargin,
          child: Text(
            data.observation,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
