import 'package:flutter/material.dart';
import 'constants.dart';

class iconDetails extends StatelessWidget {
  // const iconDetails({super.key});
  final IconData icon;
  final String label;
  iconDetails({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(label, style: kLabelStyle),
      ],
    );
  }
}
