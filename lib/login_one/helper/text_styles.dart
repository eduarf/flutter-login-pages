import 'package:flutter/material.dart';
import 'package:logins/login_one/helper/colors.dart';

class TextStyles {
  final TextStyle title = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
  );

  final TextStyle buttonTextStyle = const TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 16,
    letterSpacing: 1,
  );

  final TextStyle textStyleNormal = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors().colorBlack,
  );
}