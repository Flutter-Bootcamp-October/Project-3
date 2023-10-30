import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/widgets/login_widget/divider.dart';

class OrLoginWithFacebook extends StatelessWidget {
  const OrLoginWithFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            DividerWidget(
              rightSide: 10,
              topSide: 0,
              bottomSide: 0,
              leftSide: 0,
            ),
            Text(
              "OR",
              style: TextStyle(color: bold2Gray, fontWeight: FontWeight.w600),
            ),
            DividerWidget(
              rightSide: 0,
              topSide: 0,
              bottomSide: 0,
              leftSide: 10,
            ),
          ],
        ),
        height36,
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/facebppk.png"),
              width12,
              const Text(
                "Log in with Facebook",
                style:
                    TextStyle(color: staticBlue, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
