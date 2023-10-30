import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? "),
        TextButton(
          onPressed: () {},
          child: const Text(
            " SignUp.",
            style: TextStyle(color: staticBlue, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
