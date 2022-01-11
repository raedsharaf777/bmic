import 'dart:math';

class ResultCalculate {
  var height;
  var weight;
  var _bmi;

  ResultCalculate({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
    //return _bmi.toString();
  }

  String getTextResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getMessageResult() {
    if (_bmi >= 25) {
      return 'OverWeight -> You have to play sports to get better ';
    } else if (_bmi > 18.5) {
      return 'Normal -> You are a natural body and you do not need to make an effort ';
    } else {
      return 'UnderWeight -> You should eat a lot, eat healthy and play sports';
    }
  }
}
