import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/widgets/profile_widget/app_bar_profile.dart';
import 'package:instagram_cloning/widgets/profile_widget/highlights.dart';
import 'package:instagram_cloning/widgets/profile_widget/option_grid.dart';
import 'package:instagram_cloning/widgets/profile_widget/profile_edit.dart';
import 'package:instagram_cloning/widgets/profile_widget/profile_firs_row.dart';
import 'package:instagram_cloning/widgets/profile_widget/profile_gridbiew.dart';
import 'package:instagram_cloning/widgets/profile_widget/profile_share.dart';
import 'package:instagram_cloning/widgets/profile_widget/static_info.dart';
import 'package:instagram_cloning/widgets/profile_widget/user_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarProfile(context),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height14,
              ProfileFirstRow(),
              UserInfo(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ProfileEditContainer(), ProfileShareContainer()],
                ),
              ),
              StaticInfo(),
              Highlights(),
              height18,
              OptionGrid(),
              height14,
              ProfileGridView()
            ],
          ),
        ),
      ),
    );
  }
}
