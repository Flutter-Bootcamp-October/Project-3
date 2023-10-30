import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/data.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/models/user_model.dart';
import 'package:instagram_cloning/widgets/login_widget/login.dart';
import 'package:instagram_cloning/widgets/login_widget/forgot_password.dart';
import 'package:instagram_cloning/widgets/login_widget/logo_instagram.dart';
import 'package:instagram_cloning/widgets/login_widget/or_login_with_Facebook.dart';
import 'package:instagram_cloning/widgets/login_widget/sign_up.dart';
import 'package:instagram_cloning/widgets/login_widget/text_field_info.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  void initState() {
    for (var element in dataUser) {
      userInfo.add(Users.fromJason(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 130),
              child: Column(
                children: [
                  const LogoInstagram(),
                  height16,
                  TextFieldInfo(
                    hintTextField: "Phone number, username or email",
                    isObscureText: false,
                    input: controllerUsername,
                  ),
                  height12,
                  TextFieldInfo(
                    input: controllerPassword,
                    hintTextField: "Password",
                    isObscureText: true,
                  ),
                  const ForgotPassword(),
                  height16,
                  Login(
                      passWord: controllerPassword,
                      userName: controllerUsername),
                  height24,
                  const OrLoginWithFacebook()
                ],
              ),
            ),
            const Divider(color: boldGray),
            const SignUp()
          ],
        ),
      ),
    );
  }
}
