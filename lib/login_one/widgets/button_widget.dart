import 'package:flutter/material.dart';
import 'package:logins/login_one/helper/paddings.dart';
import 'package:logins/login_one/helper/text_styles.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.buttonText,
    required this.buttonBgColor,
    required this.buttonTextColor,
    required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final Color buttonBgColor;
  final Color buttonTextColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: UiPaddings().insideButtonPadding,
        decoration: BoxDecoration(
          color: buttonBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyles().buttonTextStyle.copyWith(color: buttonTextColor),
          ),
        ),
      ),
    );
  }
}