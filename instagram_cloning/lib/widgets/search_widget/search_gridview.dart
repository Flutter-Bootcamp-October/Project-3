import 'package:flutter/material.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/widgets/search_widget/search_posts.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        childAspectRatio: 1 / 1,
        children: postInfo
            .map((items) => SearchPosts(
                  post: items,
                ))
            .toList(),
      ),
    );
  }
}
