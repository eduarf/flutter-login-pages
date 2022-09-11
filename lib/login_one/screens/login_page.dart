import 'package:flutter/material.dart';
import 'package:logins/login_one/helper/colors.dart';
import 'package:logins/login_one/helper/paddings.dart';
import 'package:logins/login_one/helper/strings.dart';
import 'package:logins/login_one/helper/text_styles.dart';
import 'package:logins/login_one/widgets/button_widget.dart';
import 'package:logins/login_one/widgets/input_widget.dart';
import 'package:logins/login_one/widgets/text_widget.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox20 = SizedBox(
      height: 20,
    );
    const sizedBox10 = SizedBox(
      height: 10,
    );
    return Scaffold(
      backgroundColor: AppColors().bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextWidget(
                  text: Strings().textTitle,
                  textstyle: TextStyles().title,
                ),
                sizedBox10,
                TextWidget(
                    text: Strings().subTitle,
                    textstyle: TextStyles()
                        .title
                        .copyWith(fontWeight: FontWeight.normal, fontSize: 24)),
                sizedBox20,
                Padding(
                  padding: UiPaddings().horizontalPadding,
                  child: InputWidget(
                    hintText: Strings().hintTextMail,
                  ),
                ),
                sizedBox20,
                Padding(
                  padding: UiPaddings().horizontalPadding,
                  child: InputWidget(
                    hintText: Strings().hintTextPassword,
                    obscureText: true,
                  ),
                ),
                sizedBox20,
                Padding(
                  padding: UiPaddings().horizontalPadding,
                  child: ButtonWidget(
                    onTap: (){},
                    buttonText: Strings().signIn,
                    buttonBgColor: AppColors().buttonBgColor,
                    buttonTextColor: AppColors().bgColor,
                  ),
                ),
                sizedBox10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                        text: Strings().notAMember,
                        textstyle: TextStyles().textStyleNormal),
                    TextWidget(
                        text: Strings().registerNow,
                        textstyle: TextStyles()
                            .textStyleNormal
                            .copyWith(color: AppColors().colorBlue))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
