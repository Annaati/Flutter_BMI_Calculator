import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final bool selected;
  final Function()? onpressed;

  const ReusableCard({
    Key? key, this.child, this.selected = false, this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        child:  child,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: selected == true ? kActiveCardColour :kInactiveCardColour,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}