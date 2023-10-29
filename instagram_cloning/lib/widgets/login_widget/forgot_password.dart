import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 223),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Forgot password?",
          style: TextStyle(color: staticBlue, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
