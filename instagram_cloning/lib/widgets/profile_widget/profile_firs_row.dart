import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';

class ProfileFirstRow extends StatelessWidget {
  const ProfileFirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipOval(
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              currentUser.profilePic,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              currentUser.post.length.toString(),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const Text(
              "Posts",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              currentUser.followers.toString(),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const Text(
              "Followers",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              currentUser.following.toString(),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const Text(
              "Following",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
