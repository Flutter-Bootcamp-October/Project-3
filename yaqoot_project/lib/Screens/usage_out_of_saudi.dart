import 'package:flutter/material.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class UsageOutOfSaudi extends StatelessWidget {
  const UsageOutOfSaudi({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You can purchase Add-ons to be',
          style: TextStyle(fontSize: 24, color: grey),
        ),
        Text(
          ' used with your Package check',
          style: TextStyle(fontSize: 24, color: grey),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' the store from',
              style: TextStyle(fontSize: 24, color: grey),
            ),
            Text(
              ' here',
              style: TextStyle(fontSize: 24, color: green),
            ),
          ],
        )
      ],
    ));
  }
}
