import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';
import 'package:instagram_cloning/widgets/profile_widget/add_post_appbar_profile.dart';
import 'package:instagram_cloning/widgets/profile_widget/drawer_appbar_profile.dart';
import 'package:instagram_cloning/widgets/profile_widget/logout_appbar_profile.dart';

PreferredSizeWidget appBarProfile(BuildContext context) {
  return AppBar(
    backgroundColor: white,
    iconTheme: const IconThemeData(color: black),
    elevation: 0,
    title: Row(
      children: [
        Text(
          currentUser.userName,
          style: const TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        const LogoutAppBarProfile(),
      ],
    ),
    automaticallyImplyLeading: false,
    actions: const [AddPostAppBarProfile(), DrawerAppBarProfile()],
  );
}
