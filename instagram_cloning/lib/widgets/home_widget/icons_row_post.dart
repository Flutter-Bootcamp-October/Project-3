import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class IconsRowsPost extends StatelessWidget {
  const IconsRowsPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/Like.png",
                height: 30,
                width: 30,
                color: black,
              ),
              width14,
              Image.asset(
                "assets/Comment.png",
                height: 30,
                width: 30,
                color: black,
              ),
              width14,
              Image.asset(
                "assets/Messanger.png",
                height: 30,
                width: 30,
                color: black,
              ),
            ],
          ),
          Image.asset(
            "assets/Save.png",
            height: 30,
            width: 30,
            color: black,
          ),
        ],
      ),
    );
  }
}
