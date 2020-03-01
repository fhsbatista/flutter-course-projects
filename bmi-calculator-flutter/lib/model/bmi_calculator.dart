import 'dart:math';

import 'package:bmi_calculator/model/bmi_data.dart';
import 'package:bmi_calculator/model/gender.dart';

class BMICalculator {
  final double height;
  final double weight;
  final int age;
  final Gender gender;

  BMIData data;

  BMICalculator(this.height, this.weight, this.age, this.gender) {
    _initialize();
  }

  void _initialize() {
    double bmi = weight / pow(height / 100, 2);

    data = BMIData(bmi);
  }
}
