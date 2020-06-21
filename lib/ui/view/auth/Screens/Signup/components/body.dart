import 'package:flutter/material.dart';
import 'package:appfinalproject/ui/view/auth/Screens/Login/login_screen.dart';
import 'package:appfinalproject/ui/view/auth/Screens/Signup/components/background.dart';
import 'package:appfinalproject/ui/view/auth/Screens/Signup/components/or_divider.dart';
import 'package:appfinalproject/ui/view/auth/Screens/Signup/components/social_icon.dart';
import 'package:appfinalproject/ui/view/auth/components/already_have_an_account_acheck.dart';
import 'package:appfinalproject/ui/view/auth/components/rounded_button.dart';
import 'package:appfinalproject/ui/view/auth/components/rounded_input_field.dart';
import 'package:appfinalproject/ui/view/auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "ĐĂNG KÝ",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            OrDivider(),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}