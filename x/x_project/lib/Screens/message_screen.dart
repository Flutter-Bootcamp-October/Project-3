import 'package:flutter/material.dart';
import 'package:x_project/tools/colors.dart';
import 'package:x_project/tools/size.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Icon(
          Icons.account_circle,
          color: Color(0xffc9d4da),
          size: 30,
        ),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff10171f),
                  hintText: "Search Direct Massage",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.settings_outlined,
            color: Colors.white,
          ),
          width8
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipOval(
            child: Container(
              height: 55,
              color: Colors.black,
              child: Image.asset(
                'images\\X_logo.png',
                scale: 30,
              ),
            ),
          ),
          const SizedBox(width: 1),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Support",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("\t@support", style: TextStyle(color: Colors.grey)),
                  Text("\t.09 Jul 19", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Text(
                "Hi there Let's go through a few qustions so I can\nmake sure to get the right information to our supp...",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
