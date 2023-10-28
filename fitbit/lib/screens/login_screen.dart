import 'package:fitbit/consts/login_consts.dart';
import 'package:fitbit/extentions/navigation_extentions.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/global/user.dart';
import 'package:fitbit/screens/navigationbar.dart';
import 'package:fitbit/screens/starter_screen.dart';
import 'package:fitbit/widgets/login_container.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Image.asset("lib/assets/images/privecy_terms.png"),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(color: Colors.black, Icons.arrow_back_ios),
          onPressed: () {
            context.removeUnitl(const WelcomeScreen());
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 150),
          LoginContainer(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  logoWithPadding,
                  logotextWithPadding,
                  emailTextField,
                  passwordTextField,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff9b6e27),
                        ),
                        onPressed: () {}, //navigoter
                        child: forgotPassword),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: context.getWidithSizing(number: .6),
                      height: context.getHeightSizing(number: .05),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 0,
                            backgroundColor: const Color(0xfff0f1f1),
                          ),
                          onPressed: () {
                            if (usernameController.text.isNotEmpty) {
                              userInfo = {
                                "name": usernameController.text,
                                "time": "Joined 2023"
                              };
                            }
                            context.removeUnitl(const Navigation());
                          },
                          child: buttonText))
                ],
              ),
            ),
          ),
          const SizedBox(height: 118),
          Container(height: 40, color: Colors.white),
        ]),
      ),
    );
  }
}
