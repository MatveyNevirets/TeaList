import 'dart:math';

import 'package:flutter/material.dart';

class StylizedButton extends StatelessWidget {
  VoidCallback onPressed;
  String text;

  Color backgroundColor;
  Color textColor;

  double fontSize;

  Size buttonSize;

  StylizedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonSize = const Size(100, 50),
    this.backgroundColor = const Color.fromARGB(255, 148, 131, 95),
    this.textColor = Colors.white,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        fixedSize: WidgetStatePropertyAll(buttonSize),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: 'Coiny',
        ),
      ),
    );
  }
}
