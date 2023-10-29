import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class ProfileShareContainer extends StatelessWidget {
  const ProfileShareContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 30,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: cold2Gray),
        child: const Center(
          child: Text("Share Profile"),
        ),
      ),
    );
  }
}
