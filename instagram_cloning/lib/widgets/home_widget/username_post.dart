import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/models/post_model.dart';

class UsernamePost extends StatelessWidget {
  const UsernamePost({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    post.profilePic,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              width12,
              Text(
                post.userName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const Icon(Icons.more_horiz_rounded)
        ],
      ),
    );
  }
}
