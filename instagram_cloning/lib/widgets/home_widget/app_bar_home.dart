import 'package:flutter/material.dart';
import 'package:instagram_cloning/constants/const.dart';
import 'package:instagram_cloning/pages/messages_page.dart';

PreferredSizeWidget appBarHome(BuildContext context) {
  return AppBar(
    backgroundColor: white,
    iconTheme: const IconThemeData(color: black),
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Image.asset(
      "assets/Instagram_back_logo.png",
      width: 150,
    ),
    actions: [
      IconButton(
          onPressed: () {}, icon: const Icon(Icons.favorite_outline_rounded)),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MessagesPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.speaker_notes_outlined)),
      ),
    ],
  );
}
