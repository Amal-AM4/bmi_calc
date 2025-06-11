import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resusable_card.dart';
import 'icon_details.dart';

const bottomContainerHeight = 80.0;
const resusableCardColor = Color(0xFF1D1F33);
const bottomContainerColor = Color(0xFFEA1556);
const inactiveContainerColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleInactiveColor = inactiveContainerColor;
  Color femaleInactiveColor = inactiveContainerColor;

  void changeColor(int gender) {
    // male = 1, female = 2
    if (gender == 1) {
      if (maleInactiveColor == inactiveContainerColor) {
        maleInactiveColor = resusableCardColor;
      } else {
        maleInactiveColor = inactiveContainerColor;
      }
    }

    if (gender == 2) {
      if (femaleInactiveColor == inactiveContainerColor) {
        femaleInactiveColor = resusableCardColor;
      } else {
        femaleInactiveColor = inactiveContainerColor;
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
              kolor: resusableCardColor,
              cardChild: Text('data'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    kolor: resusableCardColor,
                    cardChild: Text('data'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    kolor: resusableCardColor,
                    cardChild: Text('data'),
                  ),
                ),
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
