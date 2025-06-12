import 'package:flutter/material.dart';
import 'constants.dart';
import 'resusable_card.dart';
import 'Extracted_Buttons.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('You Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              kolor: Color(0xff1d1f33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('NORMAL', style: kNormalText),
                  Text('15', style: kLargeText),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      'Your BMI is Normal, You can eat whatever you want',
                      style: kInterpretationStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonName: 'CALCULATE AGAIN',
            onPressed: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
