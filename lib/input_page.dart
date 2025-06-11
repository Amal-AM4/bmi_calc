import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resusable_card.dart';
import 'icon_details.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 45;

  Color maleInactiveColor = kinactiveContainerColor;
  Color femaleInactiveColor = kinactiveContainerColor;

  void changeColor(int gender) {
    // male = 1, female = 2
    if (gender == 1) {
      if (maleInactiveColor == kinactiveContainerColor) {
        maleInactiveColor = kresusableCardColor;
        femaleInactiveColor = kinactiveContainerColor;
      } else {
        maleInactiveColor = kinactiveContainerColor;
      }
    }

    if (gender == 2) {
      if (femaleInactiveColor == kinactiveContainerColor) {
        femaleInactiveColor = kresusableCardColor;
        maleInactiveColor = kinactiveContainerColor;
      } else {
        femaleInactiveColor = kinactiveContainerColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),
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
                      kolor: maleInactiveColor,
                      cardChild: iconDetails(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
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
                      kolor: femaleInactiveColor,
                      cardChild: iconDetails(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              kolor: kresusableCardColor,
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
                      Text(height.toString(), style: knumberStyle),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 55,
                      max: 251,
                      activeColor: Color(0xFFEA1556),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    kolor: kresusableCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kLabelStyle),
                        Text(weight.toString(), style: knumberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                            SizedBox(width: 10.0),
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Color(0xFF4c4f5e),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    kolor: kresusableCardColor,
                    cardChild: Text('data'),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: kbottomContainerColor,
            width: double.infinity,
            height: kbottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
