import 'package:bmi_calculator/Extracted_Buttons.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusable_card.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.bmiResult,
      required this.actualbmiResultValue,
      required this.interpretation});
  final String bmiResult;
  final String actualbmiResultValue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kolor: Color(0xFF1D1F33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kNormalTextStyle,
                  ),
                  Text(
                    actualbmiResultValue,
                    style: kLargeTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kInterpretationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonName: "CALCULATE AGAIN",
              onPressed: Navigator.of(context).pop)
        ],
      ),
    );
  }
}
