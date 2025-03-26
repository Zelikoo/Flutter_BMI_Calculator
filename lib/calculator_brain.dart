import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
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
      return 'Vous etês au dessus de votre poids idéal. Essayez de faire plus d\'exercice.';
    } else if (_bmi >= 18.5) {
      return 'Vous avez un poids idéal. Félicitations';
    } else {
      return 'Vous etês en dessous de votre poids idéal. Vous devez mangez plus.';
    }
  }
}
