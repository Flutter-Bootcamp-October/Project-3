import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/models/post_model.dart';

class InfoPost extends StatelessWidget {
  const InfoPost({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height12,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "${post.numberOfLikes.toString()} Likes",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        //-------------------------------
        height10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                post.userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              width10,
              Text(
                post.commentUser,
                style: const TextStyle(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),

        //-------------------------------

        height10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "View all ${post.numberOfComments} comments",
            style:
                const TextStyle(fontWeight: FontWeight.w500, color: boldGray),
          ),
        ),

        //-------------------------------

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    currentUser.profilePic,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              width12,
              const Text(
                "Add a comments...",
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: boldGray),
              )
            ],
          ),
        ),

        //-----------------------------
        height10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            post.postDate,
            style:
                const TextStyle(fontWeight: FontWeight.w400, color: boldGray),
          ),
        )
      ],
    );
  }
}
