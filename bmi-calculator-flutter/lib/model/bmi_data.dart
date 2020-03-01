class BMIData {
  final double bmi;
  String description;
  String observation;

  BMIData(this.bmi) {
    _calculate();
  }

  void _calculate() {
    if (bmi >= 25.0) {
      _setOverWeight();
    } else if (bmi > 18.5) {
      _setNormalWeight();
    } else {
      _setUnderWeight();
    }
  }

  void _setUnderWeight() {
    description = 'Underweight';
    observation =
        'You have a lower than normal weight. You can eat a bit more.';
  }

  void _setNormalWeight() {
    description = 'Normal';
    observation = 'You have a normal body. Good Job!';
  }

  void _setOverWeight() {
    description = 'Overweight';
    observation = 'You have a higher than normal weight. Exercise more.';
  }
}
