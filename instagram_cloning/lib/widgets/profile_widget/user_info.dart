import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currentUser.name,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          Text(
            currentUser.bio,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
