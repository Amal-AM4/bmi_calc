import 'package:flutter/material.dart';
import 'constants.dart';
import 'ResultPage.dart';

class BottomButton extends StatelessWidget {
  // const BottomButton({super.key});
  final String buttonName;
  final VoidCallback onPressed;

  BottomButton({required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultScreen()),
        );
      },
      child: Container(
        child: Center(child: Text(buttonName, style: kBottomTextStyle)),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        color: kbottomContainerColor,
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}

// custom roundButton
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4f5e),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
