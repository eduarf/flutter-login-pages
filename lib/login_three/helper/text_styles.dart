import 'package:flutter/material.dart';
import 'package:logins/login_three/helper/colors.dart';

LoginThreeColors colors = LoginThreeColors();

class LoginThreeTextStyles {
  final TextStyle headerStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: colors.blackTones,
  );
  final TextStyle subTitleStyle = TextStyle(
    color: colors.grayTones,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  final TextStyle basicText = const TextStyle(
    fontSize: 16,
  );

  final TextStyle blueBasic = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: colors.mainBlue,
  );
  /* 
  // if it help you that use it
  TextStyle textStyle({double fontSize = 16, FontWeight fontWeight = FontWeight.w400, Color textColor = Colors.black87}){
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: textColor,
    );
  }
  */
}
