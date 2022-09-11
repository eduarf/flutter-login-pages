import 'package:flutter/material.dart';
import 'package:logins/login_one/helper/colors.dart';
import 'package:logins/login_one/helper/paddings.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors().lightGrey,
        border: Border.all(color: AppColors().inputBordercolor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: UiPaddings().insideInputPadding,
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
