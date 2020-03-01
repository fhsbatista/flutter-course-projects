import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'routes/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        accentColor: kColorPink,
        primaryColor: Color(0xFF090b22),
        scaffoldBackgroundColor: Color(0xFF090b22),
      ),
      home: InputPage(),
    );
  }
}
