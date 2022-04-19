import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:calculator_flutter/theme/colors.dart';

class CalculatorBrain_result {
  late final int height;
  late final int weight;
  late final String gender;
  late final int age;
  late final int sportactivity;
  CalculatorBrain_result({
    required this.height,required this.weight,required this.gender,required this.age, required this.sportactivity
  });

  late double _bmi;
  late double _kcal;
  late double _sportactivity_kcal;
  late double increasingweight_kcal;
  late double reductionweight_kcal;

  String getGenderColor(){
    if(gender=='Gender.male'){
      return 'male';
    }
    else {
      return 'female';
    }
  }

  String calculate_KCAL() {
    if(gender=='Gender.male'){
      _kcal = 66.47+(13.75*weight)+(5*height)-(6.75*age);
      return _kcal.toStringAsFixed(1);
    }
    else{
      _kcal = 665.09+(9.56*weight)+(1.85*height)-(4.67*age);
      return _kcal.toStringAsFixed(1);
    }
  }

  String calculate_sportactivity_KCAL() {
    if(gender=='Gender.male'){
      _sportactivity_kcal=_kcal*(sportactivity/10+1);
      return _sportactivity_kcal.toStringAsFixed(1);
    }
    else{
      _sportactivity_kcal=_kcal*(sportactivity/10+1);
      return _sportactivity_kcal.toStringAsFixed(1);
    }
  }

  String calculate_KCAL_increasingweight() {
    if(gender=='Gender.male'){
      increasingweight_kcal=_kcal*(sportactivity/10+1)+(_kcal/8);
      return increasingweight_kcal.toStringAsFixed(1);
    }
    else{
      increasingweight_kcal=_kcal*(sportactivity/10+1)+(_kcal/8);
      return increasingweight_kcal.toStringAsFixed(1);
    }
  }

  String calculate_KCAL_reductionweight() {
    if(gender=='Gender.male'){
      reductionweight_kcal=_kcal*(sportactivity/10+1)-(_kcal/8);
      return reductionweight_kcal.toStringAsFixed(1);
    }
    else{
      reductionweight_kcal=_kcal*(sportactivity/10+1)-(_kcal/8);
      return reductionweight_kcal.toStringAsFixed(1);
    }
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Color getColor(){
    if(_bmi>40){
      return Colors.red;
    }
    else if(_bmi>35){
      return Colors.red;
    }
    else if(_bmi>30){
      return Colors.orange;
    }
    else if(_bmi>25){
      return Colors.yellow;
    }
    else if(_bmi>18.5){
      return Colors.green;
    }
    else if(_bmi>17){
      return Colors.blue;
    }
    else if(_bmi>16){
      return Colors.greenAccent;
    }
    else{
      return Colors.greenAccent;
    }
  }

  String getResult() {
    if(_bmi>40){
      return 'extreme obesity';
    }
    else if(_bmi>35){
      return 'II degree of obesity';
    }
    else if(_bmi>30){
      return 'I degree of obesity';
    }
    else if(_bmi>25){
      return 'overweight';
    }
    else if(_bmi>18.5){
      return 'correct value';
    }
    else if(_bmi>17){
      return 'underweight';
    }
    else if(_bmi>16){
      return 'emaciation';
    }
    else{
      return 'starvation';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your bmi is too big!';
    } else if (_bmi > 18.5) {
      return 'Your bmi is normal!';
    } else {
      return 'Your bmi is too low!';
    }
  }
}
