import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';

class ProfileEditOrShare extends StatelessWidget {
  const ProfileEditOrShare({super.key, required this.editOrShare});
  final String editOrShare;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: cold2Gray),
      child:  Center(
        child: Text(editOrShare),
      ),
    );
  }
}
