import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/data/gloable.dart';

PreferredSizeWidget appBarMessages(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: white,
    iconTheme: const IconThemeData(color: black),
    leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          Navigator.pop(context);
        }),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(currentUser.userName, style: const TextStyle(color: black)),
        const Icon(Icons.keyboard_arrow_down_rounded),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit_note_sharp,
            size: 40,
          ))
    ],
  );
}
