import 'package:flutter/material.dart';
import 'package:instagram_cloning/models/post_model.dart';
import 'package:instagram_cloning/pages/post_view_info_page.dart';

class SearchPosts extends StatelessWidget {
  const SearchPosts({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PostViewInfoPage(post: post);
                }));
              },
              child: Image.asset(post.post))
        ],
      ),
    );
  }
}
