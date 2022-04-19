import 'dart:ui';
import 'package:calculator_flutter/calculator.dart';
import 'package:calculator_flutter/screen/input_screen.dart';
import 'package:calculator_flutter/screen/result_screen.dart';
import 'package:calculator_flutter/theme/text.dart';
import 'package:calculator_flutter/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculator_flutter/theme/colors.dart';

import '../widgets/card.dart';


class Input_Screen extends StatefulWidget {
  @override
  _Input_Screen_State createState() => _Input_Screen_State();
}

enum Gender {male, female, other}
class _Input_Screen_State extends State<Input_Screen> {
  Gender selectedGender=Gender.other;
  int height = 175;
  int weight = 75;
  int age = 20;
  int sportactivity= 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      selectedGender == Gender.other ? C_Colors.C_other_back :
      selectedGender == Gender.male ? C_Colors.C_mars_back : C_Colors.C_venus_back,
      appBar: AppBar(
        title: Text('CALCULATOR',style: TextStyle(color: Colors.white),),
        backgroundColor:
        selectedGender == Gender.other ? C_Colors.C_other :
        selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  child: My_Card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color:
                    selectedGender == Gender.other ? C_Colors.C_other :
                    selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_other,
                    Child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.mars, size:75,),
                        const SizedBox(height: 10,),
                        const Text('MALE',style: T_TextStyle.titleTextStyle,),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: My_Card(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color:
                    selectedGender == Gender.other ? C_Colors.C_other :
                    selectedGender == Gender.male ? C_Colors.C_other : C_Colors.C_venus,
                    Child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.venus, size:75,),
                        const SizedBox(height: 10,),
                        const Text('FEMALE',style: T_TextStyle.titleTextStyle,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(children: [
            Expanded(
              child: My_Card(
                onPress: () {  },
                color:
                selectedGender == Gender.other ? C_Colors.C_other :
                selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
                Child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: T_TextStyle.titleTextStyle,
                    ),
                    Text(
                      height.toString(),
                      style: T_TextStyle.resultTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                          onPress: () {setState(() {if (height>1) {height--;}});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronLeft,
                        ),
                        Button(
                          onPress: () {setState(() {height++;});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronRight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: My_Card(
                onPress: () {  },
                color:
                selectedGender == Gender.other ? C_Colors.C_other :
                selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
                Child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'WEIGHT KG',
                      style: T_TextStyle.titleTextStyle,
                    ),
                    Text(
                      weight.toString(),
                      style: T_TextStyle.resultTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                          onPress: () {setState(() {if (weight>1) {weight--;}});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronLeft,
                        ),
                        Button(
                          onPress: () {setState(() {weight++;});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronRight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],),

          Row(children: [
            Expanded(
              child: My_Card(
                onPress: () {  },
                color:
                selectedGender == Gender.other ? C_Colors.C_other :
                selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
                Child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'AGE',
                      style: T_TextStyle.titleTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: T_TextStyle.resultTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                          onPress: () {setState(() {if (age>1) {age--;}});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronLeft,
                        ),
                        Button(
                          onPress: () {setState(() {age++;});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronRight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: My_Card(
                onPress: () {  },
                color:
                selectedGender == Gender.other ? C_Colors.C_other :
                selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
                Child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'SPORT ACTIVITY',
                      style: T_TextStyle.titleTextStyle,
                    ),
                    Text(
                      sportactivity.toString(),
                      style: T_TextStyle.resultTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Button(
                          onPress: () {setState(() {if(sportactivity>1){sportactivity--;}});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronLeft,
                        ),
                        Button(
                          onPress: () {setState(() {if(sportactivity<9){sportactivity++;}});},
                          color: Colors.white,
                          icon: FontAwesomeIcons.chevronRight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],),

          MaterialButton(
            color:
            selectedGender == Gender.other ? C_Colors.C_other :
            selectedGender == Gender.male ? C_Colors.C_mars : C_Colors.C_venus,
            height: 50,
            minWidth: double.infinity,
            child: const Text('CALCULATE',
              style: T_TextStyle.resultTextStyle,
            ),
            onPressed: (){

              if(selectedGender != Gender.other){

                CalculatorBrain_result calc =
                CalculatorBrain_result(
                    height: height,
                    weight: weight,
                    gender: '$selectedGender',
                    age:age,
                    sportactivity:sportactivity);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result_Screen(
                      kcalResult: calc.calculate_KCAL(),
                      increasingweightkcalResult: calc.calculate_KCAL_increasingweight(),
                      reductionweightkcalResult: calc.calculate_KCAL_reductionweight(),
                      sportactivityResult: calc.calculate_sportactivity_KCAL(),
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                      bmiColor: calc.getColor(),
                      genderColor: calc.getGenderColor(),
                    ),
                  ),
                );

              }

            },
          ),
        ],
      ),
    );
  }
}