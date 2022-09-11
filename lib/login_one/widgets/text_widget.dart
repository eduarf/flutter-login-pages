import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    required this.textstyle,
  }) : super(key: key);

  final String text;
  final TextStyle textstyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textstyle,
    );
  }
}