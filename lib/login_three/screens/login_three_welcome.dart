import 'package:flutter/material.dart';
import 'package:logins/login_three/helper/colors.dart';
import 'package:logins/login_three/helper/enum.dart';
import 'package:logins/login_three/helper/paddings.dart';
import 'package:logins/login_three/helper/strings.dart';
import 'package:logins/login_three/helper/text_styles.dart';
import 'package:logins/login_three/screens/login_three_login.dart';
import 'package:logins/login_three/screens/login_three_signup.dart';
import 'package:logins/login_three/widgets/button_widget.dart';

class LoginThreeWelcome extends StatelessWidget with NavigatorManager {
  const LoginThreeWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final LoginThreeStrings strings = LoginThreeStrings();
    final LoginThreeColors colors = LoginThreeColors();
    final LoginThreeTextStyles textStyles = LoginThreeTextStyles();
    final LoginThreePaddings paddings = LoginThreePaddings();

    return Scaffold(
      backgroundColor: colors.bgWhite,
      body: SafeArea(
        child: Container(
          padding: paddings.horizontalAndVertical,
          width: double.infinity,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextWidget(text: strings.login, textStyle: textStyles.headerStyle),
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                    text: strings.subTitle,
                    textAlign: TextAlign.center,
                    textStyle: textStyles.subTitleStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  illisturator(screenHeight, screenWidth),
                  const SizedBox(
                    height: 20,
                  ),
                  buttonsColumn(
                      context, screenWidth, screenHeight, strings, colors),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container illisturator(double screenHeight, double screenWidth){
    return Container(
      height: screenHeight / 2.2,
      width: screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImagePaths.login_bro.path(),
          ),
        ),
      ),
    );
  }

  Column buttonsColumn(BuildContext context, double screenWidth,
      double screenHeight, LoginThreeStrings strings, LoginThreeColors colors) {
    return Column(
      children: [
        ButtonWidget(
          onPressed: () {
            navigateToWidget(context, const LoginPageThree());
          },
          buttonWidth: screenWidth * 0.9,
          buttonHeight: screenHeight * 0.09,
          text: strings.login,
          borderColor: colors.blackTones,
        ),
        const SizedBox(
          height: 20,
        ),
        ButtonWidget(
          onPressed: () {
            navigateToWidget(context, const LoginThreeSignUp());
          },
          buttonWidth: screenWidth * 0.9,
          buttonHeight: screenHeight * 0.09,
          text: strings.signUp,
          bgColor: colors.mainBlue,
          textColor: colors.bgWhite,
        ),
      ],
    );
  }
}

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

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }
}

