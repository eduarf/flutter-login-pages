import 'package:flutter/material.dart';
import 'package:logins/login_three/helper/colors.dart';
import 'package:logins/login_three/helper/enum.dart';
import 'package:logins/login_three/helper/strings.dart';
import 'package:logins/login_three/helper/text_styles.dart';
import 'package:logins/login_three/widgets/button_widget.dart';
import 'package:logins/login_three/widgets/input_widget.dart';

class LoginPageThree extends StatelessWidget {
  const LoginPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.width;
    final LoginThreeStrings strings = LoginThreeStrings();
    final LoginThreeColors colors = LoginThreeColors();
    final LoginThreeTextStyles textStyles = LoginThreeTextStyles();
    return Scaffold(
      backgroundColor: colors.bgWhite,
      appBar: appBarWidget(colors, context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              headerTextsColumn(strings, colors),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: columnInputs(strings, colors),
              ),
              Container(
                height: screenHeight / 1.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagePaths.background.path()),
                  ),
                ),
              ),
              ButtonWidget(
                onPressed: () {},
                buttonWidth: screenWidth * 0.85,
                buttonHeight: screenHeight * 0.15,
                text: strings.login,
                bgColor: colors.mainBlue,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              rowTexts(strings, textStyles),
            ],
          ),
        ),
      ),
    );
  }

  Column headerTextsColumn(LoginThreeStrings strings, LoginThreeColors colors) {
    return Column(
      children: [
        Text(
          strings.login,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          strings.loginTo,
          style: TextStyle(
            fontSize: 16,
            color: colors.grayTones,
          ),
        ),
      ],
    );
  }

  Column columnInputs(LoginThreeStrings strings, LoginThreeColors colors) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: InputWidgetThree(text: strings.hintEmail, obscureText: false,borderColor: colors.grayTones,),
        ),
        InputWidgetThree(text: strings.hintPassword, obscureText: true,borderColor: colors.grayTones,),
      ],
    );
  }

  Row rowTexts(LoginThreeStrings strings, LoginThreeTextStyles textStyles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          strings.dontHaveAccount,
          style: textStyles.basicText,
        ),
        Text(
          strings.signUp,
          style: textStyles.blueBasic,
        ),
      ],
    );
  }

  AppBar appBarWidget(LoginThreeColors colors, BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: colors.bgWhite,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          size: 28,
          color: colors.blackTones,
        ),
      ),
    );
  }
}

