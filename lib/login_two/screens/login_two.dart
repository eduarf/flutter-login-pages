import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logins/login_two/helper/colors.dart';
import 'package:logins/login_two/helper/paddings.dart';
import 'package:logins/login_two/helper/strings.dart';
import 'package:logins/login_two/helper/text_styles.dart';

class LoginPageTwo extends StatelessWidget {
  const LoginPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final linearBoxDecoration = BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppTwoColors().mainColor,
                    AppTwoColors().linearColorTwo,
                  ],
                  ),
                );
    return Scaffold(
      backgroundColor: AppTwoColors().white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: _TopSide(linearBoxDecoration: linearBoxDecoration),
            ),
            const Flexible(
              flex: 2,
              child: _BotSide(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BotSide extends StatelessWidget {
  const _BotSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(AppStrings().needAccount,style: AppTextStyles().normalStyle.copyWith(color: Colors.black87),),
        SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/google.svg', height: 35, width: 35,),
              SvgPicture.asset('assets/facebook.svg',height: 35, width: 35,),
              SvgPicture.asset('assets/twitter.svg', height: 35, width: 35,),
            ],
          ),
        ),
        Button(buttonText: AppStrings().signUp, width: MediaQuery.of(context).size.width * .5,),
      ],
    );
  }
}

class _TopSide extends StatelessWidget {
  const _TopSide({
    Key? key,
    required this.linearBoxDecoration,
  }) : super(key: key);

  final BoxDecoration linearBoxDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: linearBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            AppStrings().login,
            style: AppTextStyles().bigTitle.copyWith(color: AppTwoColors().white),
          ),
           Padding(
            padding: AppTwoPaddings().horizontal25,
            child: InputWidget(hintText: AppStrings().hintTextMail,),
          ),
          Padding(
            padding: AppTwoPaddings().horizontal25,
            child: InputWidget(hintText: AppStrings().hintTextMail, obscureText: true,),
          ),
          Button(buttonText: AppStrings().login, width: MediaQuery.of(context).size.width * .9,),
          Text(AppStrings().forgotPassword ,style: AppTextStyles().normalStyle,),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.buttonText,
    required this.width,
  }) : super(key: key);

  final String buttonText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: AppTwoColors().mainColorDark,
        borderRadius: BorderRadius.circular(18), 
      ),
      child: Text(buttonText ,style: AppTextStyles().buttonTextStyle, textAlign: TextAlign.center,),
    );
  }
}

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
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: AppTwoColors().white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppTwoColors().white),
        focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTwoColors().white, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppTwoColors().white, width: 1.0),
            ),
      ),
    );
  }
}
