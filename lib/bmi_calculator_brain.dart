import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  final int age;
  final bool gender;

  double _bmi;

  BMICalculator({this.age, this.gender, this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower body weight. You can eat a bit more';
    }
  }

  String getAge() {
    return age.toString();
  }
}
