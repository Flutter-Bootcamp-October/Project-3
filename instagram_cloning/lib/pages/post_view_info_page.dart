import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/models/post_model.dart';
import 'package:instagram_cloning/widgets/home_widget/icons_row_post.dart';
import 'package:instagram_cloning/widgets/home_widget/info_post.dart';
import 'package:instagram_cloning/widgets/home_widget/username_post.dart';
import 'package:instagram_cloning/widgets/search_widget/app_bar_post_view_info.dart';
import 'package:instagram_cloning/widgets/search_widget/follow_container.dart';

class PostViewInfoPage extends StatelessWidget {
  const PostViewInfoPage({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBarPostViewInfo(context, title: 'Explore'),
      body: ListView(
        children: [
          height14,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UsernamePost(
                post: post,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    FollowContainer(),
                    width12,
                    Icon(Icons.more_horiz)
                  ],
                ),
              )
            ],
          ),
          height12,
          Image.asset(
            post.post,
          ),
          const IconsRowsPost(),
          InfoPost(
            post: post,
          ),
          height14
        ],
      ),
    ));
  }
}
