import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'ResultPage.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.buttonName,required this.onPressed});
  final String buttonName;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            buttonName,
            style: kbottomContainerTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed, // Call the passed callback
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}

