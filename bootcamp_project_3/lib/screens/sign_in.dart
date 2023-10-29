import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:bootcamp_project_3/screens/nav_controller.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueContainerColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueContainerColor,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'عربي',
            style: TextStyle(
              color: whiteTextNIconColor,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.cancel_outlined,
              color: whiteTextNIconColor,
              size: 32,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 16),
            Center(
              child: Image.asset(
                'lib/assets/images/mobily_logo.png',
                height: 80,
                width: 80,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Hey Friend,',
              style: TextStyle(
                  color: whiteTextNIconColor,
                  fontSize: 48,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 16),
            Text(
              'It\'s great to see you',
              style: TextStyle(
                color: whiteButtonColor,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 64),
            LogInTextField(),
            SizedBox(height: 32),
            Text(
              'FORGOT PASSWORD OR USERNAME?',
              style: TextStyle(
                  color: whiteTextNIconColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  'Want another way?',
                  style: TextStyle(
                    color: whiteTextNIconColor,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Quick Login',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: whiteTextNIconColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  'By logging in, you agree to Mobily\'s ',
                  style: TextStyle(
                    color: whiteTextNIconColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: whiteTextNIconColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 64),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NavController()));
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                color: whiteTextNIconColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: blueTextNIconColor),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 40,
                        color: blueTextNIconColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogInTextField extends StatelessWidget {
  const LogInTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: TextStyle(
              color: whiteTextNIconColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        Divider(
          color: whiteButtonColor,
          thickness: 1,
        ),
        SizedBox(height: 32),
        Text(
          'Password',
          style: TextStyle(
              color: whiteTextNIconColor,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        Divider(
          color: whiteButtonColor,
          thickness: 1,
        ),
      ],
    );
  }
}
