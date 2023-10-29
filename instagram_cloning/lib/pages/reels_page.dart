import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
          child: Text(
        "Reels",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
    ));
  }
}
