import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/models/post_model.dart';
import 'package:instagram_cloning/widgets/home_widget/icons_row_post.dart';
import 'package:instagram_cloning/widgets/home_widget/info_post.dart';
import 'package:instagram_cloning/widgets/home_widget/username_post.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height16,
          UsernamePost(post: post),
          height12,
          Image.asset(post.post),
          height12,
          const IconsRowsPost(),
          InfoPost(post: post)
        ],
      ),
    );
  }
}
