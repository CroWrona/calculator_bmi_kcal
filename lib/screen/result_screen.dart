import 'package:calculator_flutter/theme/colors.dart';
import 'package:calculator_flutter/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'input_screen.dart';class Result_Screen extends StatelessWidget {
  final String kcalResult;
  final String increasingweightkcalResult;
  final String reductionweightkcalResult;
  final String sportactivityResult;
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final Color bmiColor;
  final String genderColor;

  Result_Screen({
    required this.kcalResult,
    required this.increasingweightkcalResult,
    required this.reductionweightkcalResult,
    required this.sportactivityResult,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.bmiColor,
    required this.genderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      genderColor == 'other' ? C_Colors.C_other_back :
      genderColor == 'male' ? C_Colors.C_mars_back : C_Colors.C_venus_back,
      appBar: AppBar(
        title: Text('RESULT',style: TextStyle(color: Colors.white),),
        backgroundColor:
        genderColor == 'other' ? C_Colors.C_other :
        genderColor == 'male' ? C_Colors.C_mars : C_Colors.C_venus,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Container(
            color: bmiColor,
            child: Text(
              resultText.toUpperCase(),textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontSize: 40,),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(interpretation, textAlign: TextAlign.center, style: T_TextStyle.titleTextStyle,),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Your body mass index is : '),
            Text(
              bmiResult,
              style: T_TextStyle.titleTextStyle,
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Basic metabolism : '),
            Text(
              kcalResult+' kcal',
              style: T_TextStyle.titleTextStyle,
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Total metabolism : '),
            Text(
              sportactivityResult+' kcal',
              style: T_TextStyle.titleTextStyle,
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Increasing weight : '),
            Text(
              increasingweightkcalResult+' kcal',
              style: T_TextStyle.titleTextStyle,
            ),
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Reduction weight : '),
            Text(
              reductionweightkcalResult+' kcal',
              style: T_TextStyle.titleTextStyle,
            ),
          ],),

        ],
      ),
    );
  }
}