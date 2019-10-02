 import 'package:flutter/material.dart';
 import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF090C22),
        scaffoldBackgroundColor: Color(0XFF090C22),
      ),
      home: InputPage(),
    );
  }
}

