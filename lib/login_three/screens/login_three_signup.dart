import 'package:flutter/material.dart';
import 'package:logins/login_one/widgets/button_widget.dart';
import 'package:logins/login_one/widgets/input_widget.dart';
import 'package:logins/login_one/widgets/text_widget.dart';
import 'package:logins/login_three/helper/colors.dart';
import 'package:logins/login_three/helper/enum.dart';
import 'package:logins/login_three/helper/strings.dart';
import 'package:logins/login_three/helper/text_styles.dart';
import 'package:logins/login_three/screens/login_three_login.dart';

class LoginThreeSignUp extends StatelessWidget {
  const LoginThreeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidht = MediaQuery.of(context).size.width;
    final LoginThreeColors colors = LoginThreeColors();
    final LoginThreeStrings strings = LoginThreeStrings();
    final LoginThreeTextStyles textStyles = LoginThreeTextStyles();
    return Scaffold(
      backgroundColor: colors.bgWhite,
      appBar: appBarWidget(colors, context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  TextWidget(
                      text: strings.signUp, textstyle: textStyles.headerStyle),
                  const SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                      text: strings.creatAnAccount,
                      textstyle: textStyles.subTitleStyle),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    InputWidgetThree(
                      text: strings.hintEmail,
                      borderColor: colors.grayTones,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidgetThree(
                      text: strings.hintPassword,
                      obscureText: true,
                      borderColor: colors.grayTones,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidgetThree(
                      text: strings.hintPasswordAgain,
                      obscureText: true,
                      borderColor: colors.grayTones,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ButtonWidget(
                  buttonText: strings.signUp,
                  buttonBgColor: colors.mainBlue,
                  buttonTextColor: Colors.white,
                  onTap: () {},
                ),
              ),
              Container(
                  height: screenHeight / 2.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagePaths.sign_up_bg.path()),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
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
