import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 1 / 1,
      children: [
        for (var post in currentUser.post)
          Image.asset(
            post,
            height: 50,
            width: 50,
          )
      ],
    );
  }
}
