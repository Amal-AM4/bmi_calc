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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('HEIGHT', style: kLabelStyle),
                  Row(children: [Text('180', style: knumberStyle)]),
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
                    cardChild: Text('data'),
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
