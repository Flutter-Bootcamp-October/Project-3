import 'package:fitbit/extentions/navigation_extentions.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/screens/login_screen.dart';
import 'package:flutter/material.dart';

class StarterButton extends StatelessWidget {
  const StarterButton(
      {super.key, required this.buttonText, required this.buttonColor});
  final Text buttonText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: context.getWidithSizing(number: .9),
        height: context.getHeightSizing(number: .05),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Colors.black),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0,
            backgroundColor: buttonColor,
          ),
          onPressed: () {
            context.pushScreen(const LoginScreen());
          },
          child: buttonText,
        ),
      ),
    );
  }
}