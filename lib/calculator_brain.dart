import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You fat fuck! Run some, nigga, run!';
    } else if (_bmi >= 18.5) {
      return 'Ayiii. \'Can\'t pick on you now. Sheesh.';
    } else {
      return 'You skinny ass motherfucker. I\'ma light you up like a joint! Eat, nigga, eat!';
    }
  }
}
