import 'package:bootcamp_project_3/colors/appColors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyLineOptions extends StatelessWidget {
  MyLineOptions({super.key, required this.icon, required this.text});
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        Text(
          ' $text',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 25,
          color: blueTextNIconColor,
        ),
      ],
    );
  }
}
