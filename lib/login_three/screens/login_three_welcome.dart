import 'package:flutter/material.dart';
import 'package:logins/login_three/helper/paddings.dart';
import 'package:logins/login_three/helper/strings.dart';
import 'package:logins/login_three/helper/text_styles.dart';

class LoginThreeWelcome extends StatelessWidget {
  const LoginThreeWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: LoginThreePaddings().horizontalAndVertical,
          width: double.infinity,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    LoginThreeStrings().titleWelcome,
                    style: LoginThreeTextStyles().headerStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    LoginThreeStrings().subTitle,
                    textAlign: TextAlign.center,
                    style: LoginThreeTextStyles().subTitleStyle,
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: screenHeight / 2.2,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/login-bro.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      ButtonWidget(
                        screenWidth: screenWidth * 0.9,
                        screenHeight: screenHeight * 0.09,
                        text: 'Login',
                        borderColor: Colors.black,
                      ),
                      const SizedBox(height: 20,),
                      ButtonWidget(
                        screenWidth: screenWidth * 0.9,
                        screenHeight: screenHeight * 0.09,
                        text: 'Sign Up',
                        bgColor: const Color(0xff407BFF),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    this.bgColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.black,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String text;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: screenWidth,
      height: screenHeight,
      onPressed: () {},
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
