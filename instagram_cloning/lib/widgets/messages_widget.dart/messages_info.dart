import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class MessagesInfo extends StatelessWidget {
  const MessagesInfo(
      {super.key,
      required this.image,
      required this.userMessage,
      required this.messg});

  final String image;
  final String userMessage;
  final String messg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: SizedBox(height: 70, width: 70, child: Image.asset(image)),
            ),
            width14,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userMessage,
                  style: const TextStyle(
                      color: black, fontWeight: FontWeight.w700),
                ),
                Text(messg)
              ],
            ),
          ],
        ),
        const Icon(Icons.photo_camera_outlined)
      ],
    );
  }
}
