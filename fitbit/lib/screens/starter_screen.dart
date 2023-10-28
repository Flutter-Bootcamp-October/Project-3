import 'package:fitbit/consts/starter_consts.dart';
import 'package:fitbit/extentions/size_extentions.dart';
import 'package:fitbit/widgets/starter_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08b9ad),
      body: Center(
        child: Column(
          children: [
            Image.asset('lib/assets/images/starter.png'),
            const SizedBox(height: 215),
            Padding(
                padding: EdgeInsets.only(
                    left: context.getWidithSizing(number: 0.32)),
                child: starterLogo),
            const Padding(padding: EdgeInsets.all(8.0), child: starterQoute),
            const SizedBox(height: 10),
            const StarterButton(
              buttonText: starterButton1,
              buttonColor: Colors.black,
            ),
            const StarterButton(
              buttonText: starterButton2,
              buttonColor: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
