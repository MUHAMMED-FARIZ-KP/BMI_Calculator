import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_details.dart';
import 'reusable_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleInactiveColor = kInactiveContainerColor;
  Color femaleInactiveColor = kInactiveContainerColor;

  void changeColor(int gender) {
    if (gender == 1) {
      if (maleInactiveColor == kInactiveContainerColor) {
        maleInactiveColor = kReusableCardColor;
        femaleInactiveColor = kInactiveContainerColor;
      } else {
        maleInactiveColor = kInactiveContainerColor;
      }
    }
    if (gender == 2) {
      if (femaleInactiveColor == kInactiveContainerColor) {
        femaleInactiveColor = kReusableCardColor;
        maleInactiveColor = kInactiveContainerColor;
      } else {
        femaleInactiveColor = kInactiveContainerColor;
      }
    }
  }

  int height = 180;
  int weight = 45;
  int age=15;

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeColor(1);
                    });
                  },
                  child: ReusableCard(
                    cardChild: iconDetails(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    kolor: maleInactiveColor,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeColor(2);
                    });
                  },
                  child: ReusableCard(
                    cardChild: iconDetails(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    kolor: femaleInactiveColor,
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 115,
                        max: 215,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
              kolor: kReusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    kolor: kReusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    kolor: kReusableCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text("CALCULATE",
              style: kbottomContainerTextStyle,),
            ),
            margin: EdgeInsets.only(top: 10.0),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
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
