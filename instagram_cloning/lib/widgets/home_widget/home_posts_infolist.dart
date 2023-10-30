import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/widgets/home_widget/all_post.dart';

class HomePostsInfoList extends StatelessWidget {
  const HomePostsInfoList({
    super.key,
  });

  // @override
  @override
  Widget build(BuildContext context) {
    return Column(
        children: postInfo
            .map((items) => AllPosts(
                  post: items,
                ))
            .toList());
  }
}
