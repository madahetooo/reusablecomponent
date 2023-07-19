import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const CustomText({
    required this.text,
    this.color = Colors.black,
    this.fontSize = 25,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ));
  }
}
