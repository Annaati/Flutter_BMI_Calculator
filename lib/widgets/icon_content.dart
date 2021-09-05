import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
final String title;

  const IconContent({
    Key? key, required this.iconData, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, 
        size: 80,
        ),
        SizedBox(height: 10),
        Text(title,
        style: TextStyle(
          fontSize: 24,
          color: Colors.grey,
          ),
        ),
      ],
      );
  }
}