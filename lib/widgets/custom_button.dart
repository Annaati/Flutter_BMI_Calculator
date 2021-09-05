import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Function() onpressed;
  
  const CustomButton({
    Key? key, this.title, required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
    child: Text(title ?? 'CALCULATE',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    ),
    fillColor: kBottomContainerColour,
    constraints: BoxConstraints.tightFor(
      width: double.infinity,
      height: 50,
    ),
    );
  }
}