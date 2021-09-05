import 'package:bmi_calc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  String  translateResult(){
    if (result >= 0 && result <= 18)
      return 'You\'re Underweight 😔';
    else if (result >= 19 && result <= 25)
      return 'You\'re in shape \n(Normal or Healthy Weight) 😊';
    else if (result >= 26 && result <= 29)
      return 'You\'re Overweight 😔';
    else
      return 'You\'re Obese 😔';
  }

  const ResultScreen({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      result.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      translateResult(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(onpressed: () => Navigator.pop(context),
          title: 'Re-Calcualte',
          )
        ],
      ),
    );
  }
}
