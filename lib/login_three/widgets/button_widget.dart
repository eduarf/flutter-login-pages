import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
  const ButtonWidget({
    Key? key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.text,
    this.bgColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.black,
    required this.onPressed,
  }) : super(key: key);

  final double buttonWidth;
  final double buttonHeight;
  final String text;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: buttonWidth,
      height: buttonHeight,
      onPressed: onPressed,
      color: bgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}