import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';

class StoryUsers extends StatelessWidget {
  const StoryUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                        color: coldGray, shape: BoxShape.circle),
                    child: ClipOval(
                      child: Image.asset(
                        currentUser.profilePic,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: blue,
                        border: Border.all(color: white, width: 4)),
                    child: Icon(
                      Icons.add,
                      color: white,
                    ),
                  )
                ]),
                height10,
                const Text("Your story")
              ],
            ),
            width14,
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      color: coldGray, shape: BoxShape.circle),
                ),
                height10,
                const Text("users")
              ],
            ),
            width14,
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      color: coldGray, shape: BoxShape.circle),
                ),
                height10,
                const Text("users")
              ],
            ),
            width14,
            Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      color: coldGray, shape: BoxShape.circle),
                ),
                height10,
                const Text("users")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
