import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyLineTitle extends StatelessWidget {
  MyLineTitle({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
    );
  }
}
