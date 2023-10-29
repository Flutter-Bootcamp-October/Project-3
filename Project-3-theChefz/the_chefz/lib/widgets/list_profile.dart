import 'package:flutter/material.dart';

class ListProfile extends StatelessWidget {
  const ListProfile(
      {super.key, required this.profileName, required this.profileImage});

  final String profileName;
  final String profileImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Image.asset(
            profileImage,
            color: Colors.grey[400],
            width: 20,
            height: 20,
          ),
        ),
        title: Text(
          profileName,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.grey[400],
          size: 20,
        ),
      ),
    );
  }
}
