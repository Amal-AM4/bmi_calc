import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  late double _bmi;

  Calculator({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher body weight than others, You can do more exercises';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight, Great Job!';
    } else {
      return 'You have a lower body weight than others, You can eat more';
    }
  }
}
