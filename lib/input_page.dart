import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_details.dart';
import 'reusable_card.dart';
const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1F33);
const bottomContainerColor = Color(0xFFEA1556);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: iconDetails(
                    icon:FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  kolor: reusableCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: iconDetails(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  kolor: reusableCardColor,
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              cardChild: Text(''),
              kolor: reusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Text(''),
                    kolor: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Text(''),
                    kolor: reusableCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}


