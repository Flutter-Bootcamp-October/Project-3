import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class FollowContainer extends StatelessWidget {
  const FollowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: cold2Gray),
      child: const Center(
        child: Text("Follow"),
      ),
    );
  }
}
