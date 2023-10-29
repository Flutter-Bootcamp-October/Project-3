import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

import 'package:instagram_cloning/data/data.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/models/post_model.dart';
import 'package:instagram_cloning/widgets/home_widget/app_bar_home.dart';
import 'package:instagram_cloning/widgets/home_widget/home_posts_infolist.dart';
import 'package:instagram_cloning/widgets/home_widget/story_users.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    for (var element in dataposts) {
      postInfo.add(Post.fromJason(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Scaffold(
          appBar: appBarHome(context),
          body: ListView(
            children: const [StoryUsers(), height12, HomePostsInfoList()],
          )),
    ));
  }
}
