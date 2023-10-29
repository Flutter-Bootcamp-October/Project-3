import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';

class ProfileEditInfo extends StatelessWidget {
  const ProfileEditInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    currentUser.profilePic,
                    fit: BoxFit.fill,
                  )),
            ),
            width14,
            ClipOval(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: black, width: 1),
                      color: Colors.transparent),
                  height: 100,
                  width: 100,
                  child: const Icon(Icons.ac_unit_outlined)),
            )
          ],
        ),
        height14,
        const Text(
          "Edit picture aor avatar",
          style: TextStyle(color: blue),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(currentUser.name),
              )
            ],
          ),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(currentUser.userName),
              )
            ],
          ),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Pronouns",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(currentUser.pronouns),
              )
            ],
          ),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Bio",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(currentUser.bio),
              )
            ],
          ),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Links",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(currentUser.links)
            ],
          ),
        ),
        const Divider(),
        height14,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(currentUser.gender),
              )
            ],
          ),
        ),
        const Divider(),
        height12,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Switch to professional account",
                style: TextStyle(color: blue, fontWeight: FontWeight.w600),
              ),
              Divider(),
              height12,
              Text(
                "Personal information setting",
                style: TextStyle(color: blue, fontWeight: FontWeight.w600),
              ),
              Divider(),
              height12,
              Text(
                "Sign up for Meta Verified",
                style: TextStyle(color: blue, fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    );
  }
}
