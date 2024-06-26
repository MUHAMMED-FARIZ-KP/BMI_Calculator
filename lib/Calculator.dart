import 'dart:math';

class Calculator{
  Calculator({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if(_bmi>18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have higher body weight ,You can do more excercise.';
    }
    else if(_bmi>18.5){
      return 'You have Normal body weight,Great Job!';
    }
    else{
      return 'You have lower body weight, You can eat healthy foods.';
    }
  }
}