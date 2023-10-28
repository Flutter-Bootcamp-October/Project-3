import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yaqoot_project/Screens/nav_bar.dart';
import 'package:yaqoot_project/constents/colors_style.dart';

class Sectiontitle extends StatelessWidget {
  const Sectiontitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Best offers',
          style:
              TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: grey),
        ),
        TextButton(
          child: const Text('Go to store',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w800, color: green)),
          onPressed: () { Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Navigatorbar()));},
        ),
      ],
    );
  }
}
