import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/pages/edit_profile_page.dart';

class ProfileEditContainer extends StatelessWidget {
  const ProfileEditContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditProfile();
        }));
      },
      child: Container(
        height: 30,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: cold2Gray),
        child: Center(
          child: Text("Edit Profile"),
        ),
      ),
    );
  }
}
