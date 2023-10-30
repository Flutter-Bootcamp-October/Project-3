import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/models/user_model.dart';
import 'package:instagram_cloning/pages/home_page.dart';
import 'package:instagram_cloning/pages/new_post_page.dart';
import 'package:instagram_cloning/pages/profile_page.dart';
import 'package:instagram_cloning/pages/reels_page.dart';
import 'package:instagram_cloning/pages/search_page.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, required this.users});

  final Users users;

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  List<Widget> listPages = [
    const HomePage(),
    const SearchPage(),
    const NewPostPage(),
    const ReelsPage(),
    const ProfilePage()
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: Colors.transparent,
          onTap: (onIndex) {
            index = onIndex;
            setState(() {});
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: black,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: black,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: black,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.slow_motion_video_rounded,
                  color: black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ClipOval(
                    child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(currentUser.profilePic))),
                label: "")
          ]),
      body: listPages[index],
    ));
  }
}
