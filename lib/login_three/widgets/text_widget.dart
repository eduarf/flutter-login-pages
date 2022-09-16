import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    required this.textStyle,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}