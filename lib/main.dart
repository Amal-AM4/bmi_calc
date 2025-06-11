import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF090C22)),
        scaffoldBackgroundColor: Color(0xFF090C22),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

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
        title: Center(
          child: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Center(child: Text('body')),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
    );
  }
}
