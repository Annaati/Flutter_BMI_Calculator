import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(BMICalc());

class BMICalc extends StatelessWidget {
  const BMICalc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff3E3E45),
        scaffoldBackgroundColor: Color(0xff4C4C50),
      ),
      home: HomeScreen(),
    );
  }
}