import 'package:flutter/material.dart';
import 'package:x_project/data/globals.dart';
import 'package:x_project/data/twittes_data.dart';
import 'package:x_project/models/twitte.dart';
import 'package:x_project/widgets/view_posts/show_twittes.dart';

class ForYou extends StatefulWidget {
  const ForYou({super.key});

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  void initState() {
    super.initState();
    if (twitteList.isEmpty) {
      for (Map twitte in twittesData) {
        twitteList.add(Twitte.fromJson(twitte));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: twitteList.map((twitte) => ShowTwitte(twitte: twitte)).toList(),
    );
  }
}
