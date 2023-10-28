import 'package:flutter/material.dart';
import 'package:x_project/data/globals.dart';
import 'package:x_project/data/twittes_data.dart';
import 'package:x_project/models/twitte.dart';
import 'package:x_project/widgets/view_posts/show_twittes.dart';

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  List<Twitte> followingPosts = [];

  @override
  void initState() {
    super.initState();
    for (Map twitte in twittesData) {
      if (followingList.contains(twitte['user_tag'])) {
        followingPosts.add(Twitte.fromJson(twitte));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children:
          followingPosts.map((twitte) => ShowTwitte(twitte: twitte)).toList(),
    );
  }
}
