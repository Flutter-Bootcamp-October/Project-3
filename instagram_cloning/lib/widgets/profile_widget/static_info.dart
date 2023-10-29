import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class StaticInfo extends StatelessWidget {
  const StaticInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Story highlights",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          height10,
          Text(
            "Keep your favorite stories on your profile",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
