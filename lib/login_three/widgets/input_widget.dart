import 'package:flutter/material.dart';

class InputWidgetThree extends StatelessWidget {
  const InputWidgetThree({
    Key? key,
    required this.text,
    this.obscureText = false,
    required this.borderColor,
  }) : super(key: key);

  final String text;
  final bool obscureText;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        // enter your code
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: text,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff407BFF)),
        ),
      ),
    );
  }
}