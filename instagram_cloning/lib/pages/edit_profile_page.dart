import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/widgets/profile_widget/profile_edit_info.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          leadingWidth: 100,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: black),
              )),
          centerTitle: true,
          title: const Text(
            "Edit profile",
            style: TextStyle(color: black),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Done",
                  style: TextStyle(color: blue),
                ))
          ],
        ),
        body: const ProfileEditInfo(),
      ),
    );
  }
}
